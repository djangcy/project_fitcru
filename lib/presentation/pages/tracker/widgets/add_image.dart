import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:project_fitcru/business_logic/blocs/image/image_upload/image_upload_cubit.dart';
import 'package:project_fitcru/config/themes/theme.dart';
import 'package:project_fitcru/presentation/widgets/error_dialog.dart';

import 'preview_images_dialog.dart';

class AddImageWidget extends StatefulWidget {
  const AddImageWidget({super.key});

  @override
  State<AddImageWidget> createState() => _AddImageWidgetState();
}

class _AddImageWidgetState extends State<AddImageWidget> {
  ImagePicker? _imagePicker;

  @override
  void initState() {
    super.initState();
    _imagePicker = ImagePicker();
  }

  Future<void> uploadImage() async {
    // final permissionStatus = await Permission.photos.request();

    Uint8List? selected;

    // MOBILE
    if (!kIsWeb) { // && permissionStatus.isGranted
      final ImagePicker picker = ImagePicker();
      XFile? image = await picker.pickImage(source: ImageSource.gallery);

      // Check for lost data (android)
      final XFile? lostData = await _retrieveLostData(_imagePicker);
      if (lostData != null) {
        image = lostData;
      }

      if (image != null) {
        selected = await File(image.path).readAsBytes();
      }
    }
    // WEB
    else if (kIsWeb) {
      final ImagePicker picker = ImagePicker();
      final XFile? image = await picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        selected = await image.readAsBytes();
      }
    }

    if (selected != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        PreviewImagesDialog.show(
          context,
          title: 'Upload these images?',
          images: [selected!],
          onConfirm: () =>
              context.read<ImageUploadCubit>().uploadImages([selected!]),
        );
      });
    } else {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ErrorDialog.show(
          context,
          title: 'Error',
          message: 'Something went wrong',
        );
      });
    }
  }

  /// Only runs on android.
  Future<XFile?> _retrieveLostData(
    ImagePicker? picker, {
    void Function()? onError,
  }) async {
    try {
      if (picker != null) {
        final LostDataResponse response = await picker.retrieveLostData();
        if (response.isEmpty) {
          return null;
        }
        final XFile? file = response.file;
        if (file != null) {
          return file;
        } else {
          if (onError != null) {
            onError();
          }
          return null;
        }
      } else {
        return null;
      }
    } catch (_) {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      margin: const EdgeInsets.fromLTRB(2, 0, 2, 0),
      height: 200,
      width: 120,
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.light
            ? Theme.of(context).colorScheme.largeButtonLight
            : Theme.of(context).colorScheme.largeButtonDark,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 2,
          color: Theme.of(context).colorScheme.onBackground.withOpacity(0.8),
        ),
      ),
      child: InkWell(
        onTap: uploadImage,
        child: const Icon(Icons.add_a_photo_outlined),
      ),
    );
  }
}
