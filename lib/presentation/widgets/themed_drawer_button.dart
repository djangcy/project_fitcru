import 'package:flutter/material.dart';

class ThemedDrawerButtonWidget extends StatelessWidget {
  const ThemedDrawerButtonWidget({
    super.key,
    required this.text,
    required this.icon,
    this.onTap,
    this.buttonColor = Colors.black26,
    this.textColor = Colors.white,
  });

  final String text;
  final IconData icon;
  final void Function()? onTap;
  final Color buttonColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(15),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: buttonColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(icon, color: textColor),
            ),
            Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: textColor),
            ),
          ],
        ),
      ),
    );
  }
}
