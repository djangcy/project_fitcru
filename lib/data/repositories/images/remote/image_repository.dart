import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:project_fitcru/business_logic/blocs/auth_user/auth_user/auth_user_provider.dart';
import 'package:uuid/uuid.dart';

class ImageRepository {
  ImageRepository()
      : _root = FirebaseStorage.instance
            .ref('${authUserProvider.uid}/stats_images');

  final Reference _root;

  void uploadImage(
    Uint8List image, {
    void Function(TaskSnapshot)? onPause,
    void Function(TaskSnapshot)? running,
    void Function(TaskSnapshot)? onSuccess,
    void Function(TaskSnapshot)? onCanceled,
    void Function(TaskSnapshot)? onError,
    void Function(FirebaseException?)? onUploadFailed,
  }) {
    try {
      final fileName = const Uuid().v4();
      _root.child('/$fileName').putData(image).snapshotEvents.listen((event) {
        switch (event.state) {
          case TaskState.paused:
            if (onPause != null) onPause(event);
          case TaskState.running:
            if (running != null) running(event);
          case TaskState.success:
            if (onSuccess != null) onSuccess(event);
          case TaskState.canceled:
            if (onCanceled != null) onCanceled(event);
          case TaskState.error:
            if (onError != null) onError(event);
        }
      });
    } on FirebaseException catch (e) {
      onUploadFailed?.call(e);
    } catch (_) {
      onUploadFailed?.call(null);
    }
  }
}
