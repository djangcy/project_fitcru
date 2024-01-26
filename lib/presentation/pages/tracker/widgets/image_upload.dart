import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_fitcru/business_logic/blocs/image/images_cubit/images_cubit.dart';
import 'package:project_fitcru/presentation/widgets/widgets.dart';

import 'add_image.dart';
import 'image_button_widget.dart';

class ImageUploadWidget extends StatelessWidget {
  const ImageUploadWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: const EdgeInsets.fromLTRB(30, 10, 30, 0),
      child: BlocBuilder<ImagesCubit, ImagesState>(
        builder: (BuildContext context, ImagesState imageState) {
          if (imageState is! ImagesLoaded) {
            return const Center(child: CircularProgressIndicatorWidget());
          }

          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Row(
              children: [
                const AddImageWidget(),
                if (imageState.images.isEmpty)
                  Container(
                    alignment: Alignment.center,
                    width: 150,
                    child: Text(
                      'Add your progress pictures',
                      style: Theme.of(context)
                          .textTheme
                          .overline!
                          .copyWith(fontWeight: FontWeight.w300),
                      maxLines: 4,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.clip,
                    ),
                  )
                else
                  const SizedBox.shrink(),
                ListView.builder(
                  itemCount: imageState.images.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return ImageButtonWidget(
                      images: [imageState.images[index]],
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
