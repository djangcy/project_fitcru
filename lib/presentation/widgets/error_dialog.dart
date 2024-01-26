import 'package:flutter/material.dart';
import 'package:project_fitcru/config/themes/theme.dart';
import 'package:project_fitcru/presentation/widgets/widgets.dart';

class ErrorDialog extends StatelessWidget {
  const ErrorDialog._({
    super.key,
    required this.title,
    required this.message,
  });

  ErrorDialog.show(
    BuildContext context, {
    super.key,
    required this.title,
    required this.message,
  }) {
    showDialog<dynamic>(
      context: context,
      builder: (context) {
        return ErrorDialog._(
          key: key,
          title: title,
          message: message,
        );
      },
    );
  }

  final String title;
  final String message;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      title: Text(
        title,
        style: Theme.of(context).textTheme.dialogTitle(context),
      ),
      content: Text(
        message,
        style: Theme.of(context).textTheme.dialogBody(context),
      ),
      actions: [
        Container(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
          alignment: Alignment.center,
          child: SizedBox(
            height: 70,
            child: ThemedButtonWidget(
              onTap: () => Navigator.pop(context),
              textContent: 'Ok',
            ),
          ),
        ),
      ],
    );
  }
}
