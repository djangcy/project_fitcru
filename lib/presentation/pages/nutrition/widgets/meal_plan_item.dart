import 'package:flutter/material.dart';
import 'package:project_fitcru/presentation/widgets/widgets.dart';

class PlanItem extends StatelessWidget {
  const PlanItem({
    super.key,
    required this.title,
    required this.body,
    this.extraInfo,
  });

  final String title;
  final String body;
  final String? extraInfo;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              title,
              maxLines: 1,
              style: Theme.of(context).textTheme.headline2,
            ),
            if (extraInfo != null)
              IconButton(
                icon: Icon(
                  Icons.info_outline,
                  size: Theme.of(context).textTheme.headline2?.fontSize,
                  color: Theme.of(context).textTheme.headline2?.color,
                ),
                onPressed: () => NoteDialog.show(
                  context,
                  message: extraInfo!,
                  title: 'Info',
                ),
              ),
          ],
        ),
        Text(
          body,
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(color: Theme.of(context).colorScheme.onBackground),
        ),
      ],
    );
  }
}
