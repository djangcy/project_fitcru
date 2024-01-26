part of 'image_upload_cubit.dart';

sealed class ImageUploadState {}

final class ImageUploadInitial extends ImageUploadState {}

class ImageUploadSuccess extends ImageUploadState {}

class ImageUploadFailed extends ImageUploadState {
  ImageUploadFailed({this.message});

  final String? message;
}
