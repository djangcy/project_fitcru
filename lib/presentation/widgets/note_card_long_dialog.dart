import 'package:flutter/material.dart';

class NoteCardLongDialog extends StatelessWidget {
  const NoteCardLongDialog._({
    super.key,
    required this.titleMessage,
    required this.contentMessage,
  });

  NoteCardLongDialog.show(
    BuildContext context, {
    super.key,
    required this.titleMessage,
    required this.contentMessage,
  }) {
    showDialog<dynamic>(
      context: context,
      builder: (context) => NoteCardLongDialog._(
        key: key,
        titleMessage: titleMessage,
        contentMessage: contentMessage,
      ),
    );
  }

  final String titleMessage;
  final String contentMessage;

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
            titleMessage,
            maxLines: 2,
            style: Theme.of(context).textTheme.headline1,
          ),
          const Spacer(),
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.close,
              color: Theme.of(context).colorScheme.onBackground,
            ),
          ),
        ],
      ),
      content: SizedBox(
        height: MediaQuery.of(context).size.height * 0.9,
        width: MediaQuery.of(context).size.width * 0.8,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Text(
            contentMessage,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
      ),
    );
  }
}
