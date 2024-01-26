import 'package:flutter/material.dart';
import 'package:project_fitcru/data/models/image/image.dart';
import 'package:project_fitcru/helpers/date_helpers.dart';

class ImageCardDialog extends StatelessWidget {
  const ImageCardDialog._({
    super.key,
    required this.images,
  });

  ImageCardDialog.show(
    BuildContext context, {
    super.key,
    required this.images,
  }) {
    showDialog<dynamic>(
      context: context,
      builder: (context) => ImageCardDialog._(
        key: key,
        images: images,
      ),
    );
  }

  final List<ImageModel> images;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      backgroundColor: Theme.of(context).colorScheme.primary,
      title: Row(
        children: [
          Text(
            DateHelpers.shortDateString(
              images.first.createdAt ?? DateTime.fromMillisecondsSinceEpoch(0),
            ),
            style: Theme.of(context)
                .textTheme
                .headline3!
                .copyWith(color: Theme.of(context).colorScheme.onBackground),
          ),
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
      content: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * 0.45,
        width: MediaQuery.of(context).size.width * 0.5,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: images.length,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Image.network(
              images[index].url,
              fit: BoxFit.contain,
            );
          },
        ),
      ),
    );
  }
}
