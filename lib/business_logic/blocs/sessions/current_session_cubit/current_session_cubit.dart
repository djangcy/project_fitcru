import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_fitcru/data/models/sessions/sessions.dart';

part 'current_session_state.dart';

class CurrentSessionCubit extends Cubit<CurrentSessionState> {
  CurrentSessionCubit() : super(CurrentSessionInitial());

  Future<void> loadCurrentSession(String id) async {
    if (state is! CurrentSessionLoaded) {
      emit(const CurrentSessionLoading());
    }

    try {
      // final session = await sessionsRef.select((value) => id).read
      sessionsRef.whereDocumentId(isEqualTo: id).snapshots().listen((snapshot) {
        final session = snapshot.docs.firstOrNull;

        if (session == null || !session.exists) {
          emit(const CurrentSessionError('Session not found'));
        }

        emit(CurrentSessionLoaded(session?.data));
      });
    } catch (e) {
      emit(CurrentSessionError(e.toString()));
    }
  }

  Future<void> updateSessionTracker({
    required String sessionId,
    required int itemIndex,
    bool? completed,
    double? weight,
  }) async {
    if (state is CurrentSessionLoaded) {
      final sessionItems =
          (state as CurrentSessionLoaded).session?.sessionItems;

      if (sessionItems != null && sessionItems.length > itemIndex) {
        SessionItemModel item = sessionItems[itemIndex];
        item = item.copyWith(completed: completed, weight: weight);

        final updatedList = List<SessionItemModel>.from(sessionItems)
          ..[itemIndex] = item;

        await sessionsRef.doc(sessionId).update(sessionItems: updatedList);

        // read updated values
        await loadCurrentSession(sessionId);
      }
    }
  }
}
