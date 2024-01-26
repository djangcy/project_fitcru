import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_fitcru/data/models/auth_user/auth_user_model.dart';
import 'package:project_fitcru/data/repositories/auth/local/auth.dart';

import 'auth_user_provider.dart';

part 'auth_user_state.dart';

class AuthUserCubit extends Cubit<AuthUserState> {
  AuthUserCubit(this._authRepository)
      : super(AuthUserState(AuthUserModel.empty()));

  final AuthRepository _authRepository;

  Future<void> loadAuthUser() async {
    final user = _authRepository.getAuthUser();
    authUserProvider = user;

    emit(AuthUserState(user));
  }
}
