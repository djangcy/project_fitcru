import 'package:flutter/material.dart';

class ImageViewer extends StatefulWidget {
  const ImageViewer._({
    super.key,
    required this.image,
  });

  ImageViewer.show(
    BuildContext context, {
    super.key,
    required this.image,
  }) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      pageBuilder: (context, _, __) => ImageViewer._(
        key: key,
        image: image,
      ),
    );
  }

  final Image image;

  @override
  State<ImageViewer> createState() => _ImageViewerState();
}

class _ImageViewerState extends State<ImageViewer> {
  final String heroTag = 'ImageViewerHeroTag';

  final _controller = TransformationController();
  TapDownDetails _doubleTapDetails = TapDownDetails();

  void _handleDoubleTapDown(TapDownDetails details) {
    setState(() => _doubleTapDetails = details);
  }

  void _handleDoubleTap() {
    if (_controller.value != Matrix4.identity()) {
      _controller.value = Matrix4.identity();
    } else {
      final position = _doubleTapDetails.localPosition;
      // 2x zoom
      setState(() {
        _controller.value = Matrix4.identity()
          ..translate(-position.dx, -position.dy)
          ..scale(2.0);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Flex(
        direction: Axis.vertical,
        children: [
          Expanded(
            child: GestureDetector(
              onDoubleTap: _handleDoubleTap,
              onDoubleTapDown: _handleDoubleTapDown,
              child: InteractiveViewer(
                transformationController: _controller,
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background,
                  ),
                  child: Hero(tag: heroTag, child: widget.image),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
