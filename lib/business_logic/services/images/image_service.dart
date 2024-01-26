import 'dart:typed_data';

import 'package:project_fitcru/data/models/image/image.dart';
import 'package:project_fitcru/data/repositories/images/remote/image_repository.dart';

class ImageUploadException extends Error {
  ImageUploadException({
    this.message,
  });

  final String? message;
}

class ImageService {
  const ImageService(this._imageRepository);

  final ImageRepository _imageRepository;

  Future<void> uploadImage(Uint8List image) async {
    _imageRepository.uploadImage(
      image,
      onSuccess: (task) async {
        final String id = task.ref.name;
        final String url = await task.ref.getDownloadURL();

        final image = ImageModel(
          id: id,
          url: url,
          createdAt: DateTime.now(),
        );

        await imagesRef.add(image);
      },
      onUploadFailed: (task) {
        throw ImageUploadException(
          message: task?.message,
        );
      },
      onError: (task) {
        throw ImageUploadException(
          message: 'Image upload failed',
        );
      },
    );
  }
}
