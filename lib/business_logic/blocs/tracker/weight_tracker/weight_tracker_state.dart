part of 'weight_tracker_cubit.dart';

sealed class WeightTrackerState {
  const WeightTrackerState([this.weightTrackers = const []]);

  final List<WeightTrackerModel> weightTrackers;
}

final class WeightTrackerInitial extends WeightTrackerState {}

final class WeightTrackerLoading extends WeightTrackerState {}

final class WeightTrackerLoaded extends WeightTrackerState {
  const WeightTrackerLoaded(super.weightTrackers);
}

final class WeightTrackerError extends WeightTrackerState {
  const WeightTrackerError({this.message});

  final String? message;
}
