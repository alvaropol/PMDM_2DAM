import 'package:flutter/material.dart';
import 'package:flutter_application_tmdb_people_and_movies/models/movies/trailer_list_response/result.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayerPreviewPage extends StatefulWidget {
  final Trailer movieTrailer;
  const VideoPlayerPreviewPage({super.key, required this.movieTrailer});

  @override
  State<VideoPlayerPreviewPage> createState() => _VideoPlayerPreviewPageState();
}

class _VideoPlayerPreviewPageState extends State<VideoPlayerPreviewPage> {
  late YoutubePlayerController _controller;
  bool _isPlayerReady = false;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
        initialVideoId: widget.movieTrailer.key!,
        flags: const YoutubePlayerFlags(
          autoPlay: true,
          mute: true,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Trailers:'),
        SizedBox(
          height: 300,
          width: double.infinity,
          child: Center(
              child: YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            onReady: () {
              _isPlayerReady = true;
            },
          )),
        ),
      ],
    );
  }

  @override
  void deactivate() {
    // Pauses video while navigating to next page.
    _controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
