import 'package:flutter/material.dart';
import 'package:project_fitcru/config/router/app_router.dart';
import 'package:project_fitcru/config/themes/theme.dart';
import 'package:project_fitcru/presentation/widgets/widgets.dart';

class ExpansionTileWidget extends StatefulWidget {
  const ExpansionTileWidget({
    super.key,
    required this.title,
    required this.reps,
    required this.sets,
    required this.restPeriod,
    this.videoUrl,
    this.note,
    this.maxWeight,
    this.completed = false,
    this.onWeightChanged,
    this.onIsCompletedChanged,
  });

  final String title;
  final String reps;
  final String sets;
  final String restPeriod;
  final String? videoUrl;
  final String? note;
  final String? maxWeight;
  final bool completed;

  final void Function(double weight)? onWeightChanged;
  final void Function(bool isCompleted)? onIsCompletedChanged;

  @override
  State<ExpansionTileWidget> createState() => _ExpansionTileWidgetState();
}

class _ExpansionTileWidgetState extends State<ExpansionTileWidget> {
  bool _isExpanded = false;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 8, 20, 0),
      child: Card(
        elevation: 4,
        color: widget.completed
            ? Theme.of(context).colorScheme.tileDisabled
            : Theme.of(context).colorScheme.tileEnabled,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            ExpansionTile(
              title: AnimatedDefaultTextStyle(
                duration: const Duration(milliseconds: 150),
                style: _isExpanded
                    ? Theme.of(context).textTheme.headline3!
                    : Theme.of(context).textTheme.headline4!,
                child: Text(widget.title),
              ),
              iconColor: Theme.of(context).textTheme.headline3!.color,
              collapsedIconColor: Theme.of(context).textTheme.headline3!.color,
              onExpansionChanged: (value) {
                setState(() {
                  _isExpanded = value;
                });
              },
              subtitle: AnimatedOpacity(
                duration: const Duration(milliseconds: 150),
                opacity: _isExpanded ? 0.0 : 1.0,
                child: Row(
                  children: [
                    Text(
                      'Reps: ${widget.reps}',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    const SizedBox(width: 20),
                    Text(
                      'Sets: ${widget.sets}',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ],
                ),
              ),
              //Expansion Area
              children: [
                Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      constraints: const BoxConstraints(
                        maxWidth: 180,
                        minWidth: 180,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Reps: ${widget.reps == '' ? 'n/a' : widget.reps}',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          Text(
                            'Sets: ${widget.sets == '' ? 'n/a' : widget.sets}',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          Text(
                            'Rest Interval: ${widget.restPeriod == '' ? 'n/a' : widget.restPeriod}',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        margin: const EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        child: ThemedInputWidget(
                          textController:
                              TextEditingController(text: widget.maxWeight),
                          onSubmitted: (value) {
                            final weight = double.tryParse(value);

                            if (weight == null) {
                              ErrorDialog.show(
                                context,
                                title: 'Invalid Entry',
                                message: 'Please enter a valid number '
                                    'as your max weight.',
                              );
                              return;
                            }

                            widget.onWeightChanged?.call(weight);
                          },
                          textAlign: TextAlign.center,
                          lengthLimit: 5,
                          keyboardType: TextInputType.number,
                          hintText: 'Max Weight',
                        ),
                      ),
                    ),
                  ],
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.play_arrow_rounded),
                      onPressed: widget.videoUrl == null
                          ? null
                          : () {
                              context.router.push(
                                YoutubePlayerRoute(
                                  exerciseName: widget.title,
                                  videoUrl: widget.videoUrl!,
                                ),
                              );
                            },
                    ),
                    IconButton(
                      icon: const Icon(Icons.notes),
                      onPressed: widget.note == null
                          ? null
                          : () => NoteCardDialog.show(
                                context,
                                contentMessage: widget.note!,
                              ),
                    ),
                    IconButton(
                      icon: widget.completed
                          ? const Icon(Icons.check_box_outlined)
                          : const Icon(Icons.check_box_outline_blank),
                      onPressed: () =>
                          widget.onIsCompletedChanged?.call(!widget.completed),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
