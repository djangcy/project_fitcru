import 'package:flutter/material.dart';

class NoteCardDialog extends StatelessWidget {
  const NoteCardDialog._({
    super.key,
    required this.contentMessage,
  });

  NoteCardDialog.show(
    BuildContext context, {
    super.key,
    required this.contentMessage,
  }) {
    showDialog<dynamic>(
      context: context,
      builder: (BuildContext context) => NoteCardDialog._(
        key: key,
        contentMessage: contentMessage,
      ),
    );
  }

  final String contentMessage;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      backgroundColor: Theme.of(context).colorScheme.primary,
      title: Row(
        children: [
          Text('Note', style: Theme.of(context).textTheme.headline1),
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
        height: MediaQuery.of(context).size.height * 0.45,
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
