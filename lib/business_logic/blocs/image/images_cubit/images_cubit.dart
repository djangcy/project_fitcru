import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_fitcru/data/models/image/image.dart';

part 'images_state.dart';

class ImagesCubit extends Cubit<ImagesState> {
  ImagesCubit() : super(ImagesInitial());

  Future<void> loadImages() async {
    emit(ImagesLoading());

    try {
      imagesRef
          .orderByCreatedAt(descending: true)
          .snapshots()
          .listen((snapshot) {
        final images = snapshot.docs.map((e) => e.data).toList();

        emit(ImagesLoaded(images));
      });
    } catch (e) {
      emit(ImagesError(message: e.toString()));
    }
  }
}
