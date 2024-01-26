import 'package:flutter/material.dart';
import 'package:project_fitcru/config/router/app_router.dart';
import 'package:project_fitcru/presentation/message_constants.dart';
import 'package:project_fitcru/presentation/widgets/widgets.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

@RoutePage()
class YoutubePlayerPage extends StatefulWidget {
  const YoutubePlayerPage({
    super.key,
    required this.videoUrl,
    required this.exerciseName,
  });

  final String videoUrl;
  final String exerciseName;

  @override
  State<YoutubePlayerPage> createState() => _YoutubePlayerPagetState();
}

class _YoutubePlayerPagetState extends State<YoutubePlayerPage> {
  YoutubePlayerController? _controller;

  @override
  void initState() {
    super.initState();

    final videoId = YoutubePlayer.convertUrlToId(widget.videoUrl);

    if (videoId == null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ErrorDialog.show(
          context,
          title: MessageConstants.videoLinkError_title,
          message: MessageConstants.videoLinkError_body,
        );
      });

      return;
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _controller = YoutubePlayerController(
          initialVideoId: videoId,
          flags: const YoutubePlayerFlags(
            loop: true,
          ),
        );
      });
    });
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_controller == null) {
      return Scaffold(
        appBar: AppBar(
          toolbarHeight: 65,
          elevation: 0,
        ),
        body: const SizedBox.shrink(),
      );
    }

    return Center(
      child: YoutubePlayerBuilder(
        //onExitFullScreen: () =>
        //    SystemChrome.setPreferredOrientations(DeviceOrientation.values),

        player: YoutubePlayer(
          controller: _controller!,
          bottomActions: [
            CurrentPosition(),
            ProgressBar(
              isExpanded: true,
              colors: ProgressBarColors(
                playedColor: Theme.of(context).colorScheme.onSecondary,
                backgroundColor: Theme.of(context).colorScheme.primary,
                handleColor: Theme.of(context).colorScheme.secondary,
                bufferedColor: Theme.of(context).colorScheme.primaryContainer,
              ),
            ),
            FullScreenButton(
              controller: _controller,
            ),
          ],
        ),
        builder: (context, player) => Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(
              color: Theme.of(context).colorScheme.onBackground,
            ),
            toolbarHeight: 65,
            backgroundColor: Theme.of(context).colorScheme.primary,
            elevation: 0,
            title: Text(
              widget.exerciseName,
              style: Theme.of(context).textTheme.headline4?.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          body: player,
        ),
      ),
    );
  }
}
