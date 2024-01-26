part of 'session_cubit.dart';

sealed class SessionState {
  const SessionState(this.sessions);

  final List<SessionModel> sessions;
}

final class SessionInitial extends SessionState {
  const SessionInitial() : super(const []);
}

final class SessionLoading extends SessionState {
  const SessionLoading() : super(const []);
}

final class SessionLoaded extends SessionState {
  const SessionLoaded(super.sessions);
}

final class SessionError extends SessionState {
  const SessionError({this.message}) : super(const []);

  final String? message;
}
