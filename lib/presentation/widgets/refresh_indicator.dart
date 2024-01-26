import 'package:flutter/material.dart';

class RefreshIndicatorWidget extends StatelessWidget {
  const RefreshIndicatorWidget({
    super.key,
    required this.child,
    required this.onRefresh,
  });

  final Widget child;
  final Future<void> Function() onRefresh;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      color: Theme.of(context).colorScheme.secondary,
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      strokeWidth: 2,
      displacement: 10,
      edgeOffset: 10,
      onRefresh: onRefresh,
      child: child,
    );
  }
}
