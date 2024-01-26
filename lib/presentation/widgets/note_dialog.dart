import 'package:flutter/material.dart';
import 'package:project_fitcru/config/themes/theme.dart';

class NoteDialog extends StatelessWidget {
  const NoteDialog._({
    super.key,
    required this.title,
    required this.message,
  });

  NoteDialog.show(
    BuildContext context, {
    super.key,
    required this.title,
    required this.message,
  }) {
    showDialog<dynamic>(
      context: context,
      builder: (context) => NoteDialog._(
        key: key,
        message: message,
        title: title,
      ),
    );
  }

  final String title;
  final String message;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      backgroundColor: Theme.of(context).colorScheme.primary,
      title: Text(
        title,
        style: Theme.of(context).textTheme.dialogTitle(context),
      ),
      content: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Text(
          message,
          style: Theme.of(context).textTheme.dialogBody(context),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            'Ok',
            style: Theme.of(context).textTheme.textDialogButton(context),
          ),
        ),
      ],
    );
  }
}
