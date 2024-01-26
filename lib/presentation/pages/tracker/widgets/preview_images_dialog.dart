import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:project_fitcru/config/themes/theme.dart';

class PreviewImagesDialog extends StatelessWidget {
  const PreviewImagesDialog._({
    super.key,
    required this.title,
    required this.images,
    this.onCancel,
    this.onConfirm,
  });

  PreviewImagesDialog.show(
    BuildContext context, {
    super.key,
    required this.title,
    required this.images,
    this.onCancel,
    this.onConfirm,
  }) {
    showDialog<dynamic>(
      context: context,
      builder: (context) => PreviewImagesDialog._(
        key: key,
        title: title,
        images: images,
        onCancel: onCancel,
        onConfirm: onConfirm,
      ),
    );
  }

  final String title;
  final List<Uint8List> images;

  final void Function()? onCancel;
  final void Function()? onConfirm;

  void showMessage() {}

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
      title: Row(
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headline3!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
        ],
      ),
      content: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * 0.45,
        width: MediaQuery.of(context).size.width * 0.5,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: images.length,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Image.memory(
              images[index],
              fit: BoxFit.contain,
            );
          },
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            onCancel?.call();
            Navigator.pop(context);
          },
          child: Text(
            'No',
            style: Theme.of(context).textTheme.textDialogButton(context),
          ),
        ),
        TextButton(
          onPressed: () {
            onConfirm?.call();
            Navigator.pop(context);
          },
          child: Text(
            'Yes',
            style: Theme.of(context).textTheme.textDialogButton(context),
          ),
        ),
      ],
    );
  }
}
