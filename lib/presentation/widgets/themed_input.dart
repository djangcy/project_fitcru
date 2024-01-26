import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ThemedInputWidget extends StatelessWidget {
  const ThemedInputWidget({
    super.key,
    this.textController,
    this.onSubmitted,
    this.onTap,
    this.lengthLimit = 64,
    this.textAlign = TextAlign.start,
    this.keyboardType = TextInputType.text,
    this.enabled,
    this.readOnly = false,
    this.hintText = '',
  });

  final TextEditingController? textController;
  final void Function(String)? onSubmitted;
  final void Function()? onTap;
  final int lengthLimit;
  final TextAlign textAlign;
  final TextInputType keyboardType;
  final bool? enabled;
  final bool readOnly;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textController,
      onSubmitted: onSubmitted,
      onTap: onTap,
      readOnly: readOnly,
      textAlign: textAlign,
      keyboardType: keyboardType,
      enabled: enabled,
      textCapitalization: TextCapitalization.characters,
      inputFormatters: [LengthLimitingTextInputFormatter(lengthLimit)],
      style: Theme.of(context)
          .textTheme
          .headline3!
          .copyWith(color: Theme.of(context).colorScheme.onBackground),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: Theme.of(context)
            .textTheme
            .headline5!
            .copyWith(color: Theme.of(context).colorScheme.onPrimary),
        alignLabelWithHint: true,
        fillColor: Theme.of(context).colorScheme.background,
        border: InputBorder.none,
        contentPadding: const EdgeInsets.only(left: 15),
      ),
    );
  }
}
