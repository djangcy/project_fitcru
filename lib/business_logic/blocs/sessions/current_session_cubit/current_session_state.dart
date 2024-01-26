part of 'current_session_cubit.dart';

sealed class CurrentSessionState {
  const CurrentSessionState([this.session]);

  final SessionModel? session;
}

class CurrentSessionInitial extends CurrentSessionState {}

class CurrentSessionLoaded extends CurrentSessionState {
  const CurrentSessionLoaded(super.session);
}

class CurrentSessionLoading extends CurrentSessionState {
  const CurrentSessionLoading();
}

class CurrentSessionError extends CurrentSessionState {
  const CurrentSessionError([this.message]);

  final String? message;
}
