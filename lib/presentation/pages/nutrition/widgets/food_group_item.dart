import 'package:flutter/material.dart';
import 'package:project_fitcru/presentation/widgets/widgets.dart';

class FoodGroupItem extends StatefulWidget {
  const FoodGroupItem({
    super.key,
    required this.foodGroup,
    required this.path,
    this.extraInfo,
  });

  final String foodGroup;
  final String path;
  final String? extraInfo;

  @override
  State<FoodGroupItem> createState() => _FoodGroupItemState();
}

class _FoodGroupItemState extends State<FoodGroupItem> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final heroTag = Object();
    // used here, and passed to imageviewer.
    final imageWidget = Image.asset(
      widget.path,
      fit: BoxFit.cover,
      color: Theme.of(context).colorScheme.onBackground.withOpacity(0.9),
    );

    return Container(
      margin: const EdgeInsets.only(top: 8),
      child: GestureDetector(
        onTap: () => ImageViewer.show(
          context,
          image: imageWidget,
        ),
        child: Card(
          elevation: 2,
          color: Theme.of(context).colorScheme.secondary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              ExpansionTile(
                initiallyExpanded: _isExpanded,
                title: Row(
                  children: [
                    Container(
                      height: 55,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        widget.foodGroup,
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),
                    Visibility(
                      visible: widget.extraInfo != null,
                      child: IconButton(
                        icon: Icon(
                          Icons.info_outline,
                          size: Theme.of(context).textTheme.headline4?.fontSize,
                          color: Theme.of(context).textTheme.headline4?.color,
                        ),
                        onPressed: () => NoteDialog.show(
                          context,
                          title: 'Info',
                          message: widget.extraInfo ?? 'n/a',
                        ),
                      ),
                    ),
                  ],
                ),
                iconColor: Theme.of(context).colorScheme.onSurface,
                collapsedIconColor: Theme.of(context).colorScheme.onSurface,
                onExpansionChanged: (value) {
                  setState(() {
                    _isExpanded = value;
                  });
                },
                children: [
                  Container(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    margin: const EdgeInsets.all(5),
                    child: Hero(
                      tag: heroTag,
                      child: imageWidget,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
