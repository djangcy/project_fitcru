import 'package:flutter/material.dart';
import 'package:project_fitcru/config/themes/theme.dart';
import 'package:project_fitcru/data/models/image/image.dart';
import 'package:project_fitcru/helpers/date_helpers.dart';

import 'image_card_dialog.dart';

class ImageButtonWidget extends StatelessWidget {
  const ImageButtonWidget({
    super.key,
    required this.images,
  });

  final List<ImageModel> images;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      margin: const EdgeInsets.fromLTRB(2, 0, 2, 0),
      height: 200,
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 2,
          color: Theme.of(context).colorScheme.onBackground.withOpacity(0.8),
        ),
      ),
      child: InkWell(
        onTap: () => ImageCardDialog.show(
          context,
          images: images,
        ),
        child: Flex(
          direction: Axis.vertical,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Image.network(
                  images[0].url,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 8, 0, 5),
              child: Text(
                DateHelpers.shortDateString(
                  images[0].createdAt ?? DateTime.fromMillisecondsSinceEpoch(0),
                ),
                maxLines: 2,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.cardFooter.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
