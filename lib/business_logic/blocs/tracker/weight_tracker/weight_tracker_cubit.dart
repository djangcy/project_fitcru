import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_fitcru/data/models/trackers/weight_tracker_model.dart';
import 'package:uuid/uuid.dart';

part 'weight_tracker_state.dart';

class WeightTrackerCubit extends Cubit<WeightTrackerState> {
  WeightTrackerCubit() : super(WeightTrackerInitial());

  Future<void> loadWeightTrackers() async {
    emit(WeightTrackerLoading());

    try {
      weightTrackersRef
          .orderByDate(descending: true)
          .snapshots()
          .listen((snapshot) {
        final weightTrackers = snapshot.docs.map((e) => e.data).toList();

        emit(WeightTrackerLoaded(weightTrackers));
      });
    } catch (e) {
      emit(WeightTrackerError(message: e.toString()));
    }
  }

  Future<void> setWeight({String? id, required double weight}) async {
    if (id == null) {
      await weightTrackersRef.add(
        WeightTrackerModel(
          id: const Uuid().v4(),
          weight: weight,
          date: DateTime.now(),
        ),
      );
      return;
    } else {
      await weightTrackersRef.doc(id).update(weight: weight);
    }
  }
}
