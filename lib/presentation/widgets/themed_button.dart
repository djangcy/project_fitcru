import 'package:flutter/material.dart';
import 'package:project_fitcru/config/themes/theme.dart';

class ThemedButtonWidget extends StatelessWidget {
  const ThemedButtonWidget({
    super.key,
    this.onTap,
    required this.textContent,
  });

  final void Function()? onTap;
  final String textContent;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Theme.of(context).colorScheme.secondary,
        ),
        child: Center(
          child: Text(
            textContent,
            style: Theme.of(context).textTheme.lightTextButton,
          ),
        ),
      ),
    );
  }
}
