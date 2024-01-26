import 'package:flutter/material.dart';
import 'package:project_fitcru/config/themes/theme.dart';

class MainAppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  const MainAppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'FITCRÜ',
        style: Theme.of(context).textTheme.title,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
