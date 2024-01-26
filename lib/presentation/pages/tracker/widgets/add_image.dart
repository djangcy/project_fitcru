import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project_fitcru/business_logic/blocs/image/image_upload/image_upload_cubit.dart';
import 'package:project_fitcru/config/themes/theme.dart';
import 'package:project_fitcru/presentation/message_constants.dart';
import 'package:project_fitcru/presentation/widgets/widgets.dart';

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

  Future<void> _selectMultiImage({
    required void Function(List<Uint8List>) uploadImages,
  }) async {
    try {
      List<XFile>? images = await _imagePicker?.pickMultiImage(
        maxHeight: 1920,
        maxWidth: 1080,
      );

      final List<XFile>? lostData = await _retrieveLostData(_imagePicker);
      if (lostData != null) {
        images = lostData;
      }

      final List<File>? files = images?.map((e) => File(e.path)).toList();

      if (files == null) {
        return;
      }

      // convert files to Uint8List.
      final List<Uint8List> rawImageList = [];
      for (final File file in files) {
        rawImageList.add(await file.readAsBytes());
      }

      // preview images in dialog before uploading.
      if (rawImageList.isNotEmpty) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          PreviewImagesDialog.show(
            context,
            title: 'Upload these images?',
            images: rawImageList,
            onConfirm: () => uploadImages(rawImageList),
          );
        });
      }
    } on PlatformException catch (e) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ErrorDialog.show(
          context,
          title: MessageConstants.generalError_title,
          message: e.message ?? MessageConstants.generalError_body,
        );
      });
    } catch (_) {}
  }

  /// Only runs on android.
  Future<List<XFile>?> _retrieveLostData(
    ImagePicker? picker, {
    void Function()? onError,
  }) async {
    try {
      if (picker != null) {
        final LostDataResponse response = await picker.retrieveLostData();
        if (response.isEmpty) {
          return null;
        }
        final List<XFile>? files = response.files;
        if (files != null) {
          return files;
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
        onTap: () {
          _selectMultiImage(
            uploadImages: (images) =>
                context.read<ImageUploadCubit>().uploadImages(images),
          );
        },
        child: const Icon(Icons.add_a_photo_outlined),
      ),
    );
  }
}
