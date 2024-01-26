import 'package:flutter/material.dart';

class DrawerButtonWidget extends StatelessWidget {
  const DrawerButtonWidget({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.labelText,
  });

  final void Function() onPressed;
  final IconData icon;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        icon: Icon(
          icon,
          color: Theme.of(context).colorScheme.onBackground.withOpacity(0.75),
        ),
        label: Text(
          labelText,
          style: Theme.of(context).textTheme.headline3!.copyWith(
                color: Theme.of(context)
                    .colorScheme
                    .onBackground
                    .withOpacity(0.75),
              ),
        ),
        style: ButtonStyle(
          elevation: MaterialStateProperty.all<double>(0),
          alignment: Alignment.centerLeft,
          splashFactory: NoSplash.splashFactory,
          backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
