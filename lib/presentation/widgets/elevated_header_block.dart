import 'package:flutter/material.dart';

class ElevatedHeaderBlockWidget extends StatelessWidget {
  const ElevatedHeaderBlockWidget({
    super.key,
    required this.content,
    this.header,
    this.mainAxisAlignment,
    this.margin,
    this.padding,
  });

  final String? header;
  final Widget content;
  final MainAxisAlignment? mainAxisAlignment;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(12, 12, 12, 0),
      padding: padding ?? const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor.withOpacity(0.5),
            blurRadius: 3,
            spreadRadius: 1,
            offset: const Offset(2, 2), // shadow direction: bottom right
          ),
        ],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
        children: [
          if (header != null)
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(bottom: 12),
              child: Text(
                header!,
                style: Theme.of(context).textTheme.headline1,
              ),
            )
          else
            const SizedBox.shrink(),
          content,
        ],
      ),
    );
  }
}
