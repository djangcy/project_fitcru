import 'package:json_annotation/json_annotation.dart';

part 'auth_user_model.g.dart';

@JsonSerializable()
class AuthUserModel {
  const AuthUserModel({
    required this.uid,
    this.email,
    this.username,
  });

  factory AuthUserModel.empty() => const AuthUserModel(
        uid: '',
        email: '',
        username: '',
      );

  factory AuthUserModel.fromJson(Map<String, dynamic> json) =>
      _$AuthUserModelFromJson(json);

  Map<String, dynamic> toJson() => _$AuthUserModelToJson(this);

  bool get isEmpty =>
      uid == AuthUserModel.empty().uid &&
      email == AuthUserModel.empty().email &&
      username == AuthUserModel.empty().username;

  bool get isNotEmpty => !isEmpty;

  final String uid;
  final String? email;
  final String? username;
}
