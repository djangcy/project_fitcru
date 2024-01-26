import 'package:project_fitcru/data/models/auth_user/auth_user_model.dart';

/// Auth spoof that returns the same user.
/// This is for demo purposes.
class AuthRepository {
  const AuthRepository();

  AuthUserModel getAuthUser() {
    return const AuthUserModel(
      uid: 'a2b66f72-5c7d-4e87-a1c3-9a4b1f8d3e22',
      email: 'johndoe@gmail.com',
      username: 'John Doe',
    );
  }
}
