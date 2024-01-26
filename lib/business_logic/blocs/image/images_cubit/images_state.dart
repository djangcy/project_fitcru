part of 'images_cubit.dart';

sealed class ImagesState {
  const ImagesState([this.images = const []]);

  final List<ImageModel> images;
}

final class ImagesInitial extends ImagesState {}

final class ImagesLoading extends ImagesState {}

final class ImagesLoaded extends ImagesState {
  const ImagesLoaded([super.images]);
}

final class ImagesError extends ImagesState {
  const ImagesError({this.message});

  final String? message;
}
