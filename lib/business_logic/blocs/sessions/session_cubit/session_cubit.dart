import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_fitcru/data/models/sessions/sessions.dart';

part 'session_state.dart';

class SessionCubit extends Cubit<SessionState> {
  SessionCubit() : super(const SessionInitial());

  Future<void> loadSessions() async {
    emit(const SessionLoading());

    try {
      final snapshot = await sessionsRef.orderByWeekday().get();

      final sessions = snapshot.docs.map((e) => e.data).toList();

      emit(SessionLoaded(sessions));
    } catch (e) {
      emit(SessionError(message: e.toString()));
    }
  }
}
