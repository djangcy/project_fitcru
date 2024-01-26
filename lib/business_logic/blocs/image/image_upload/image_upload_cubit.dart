import 'dart:typed_data';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_fitcru/business_logic/services/images/image_service.dart';

part 'image_upload_state.dart';

class ImageUploadCubit extends Cubit<ImageUploadState> {
  ImageUploadCubit(this._imageService) : super(ImageUploadInitial());

  final ImageService _imageService;

  Future<void> uploadImages(List<Uint8List> images) async {
    try {
      await Future.wait([
        ...images.map(_imageService.uploadImage),
      ]);
      emit(ImageUploadSuccess());
    } catch (e) {
      emit(ImageUploadFailed());
    }
  }
}
