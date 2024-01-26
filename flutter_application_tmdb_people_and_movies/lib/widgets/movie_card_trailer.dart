import 'package:flutter/material.dart';
import 'package:flutter_application_tmdb_people_and_movies/models/movies/trailer_list_response/result.dart';
import 'package:flutter_application_tmdb_people_and_movies/screens/video_trailers_screen.dart';

import 'package:transparent_image/transparent_image.dart';

class CardVideoWidget extends StatefulWidget {
  final Trailer movieTrailer;
  const CardVideoWidget({super.key, required this.movieTrailer});

  @override
  State<CardVideoWidget> createState() => _CardVideoWidgetState();
}

class _CardVideoWidgetState extends State<CardVideoWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 200,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => VideoPlayerPreviewPage(
                        movieTrailer: widget.movieTrailer,
                      )));
        },
        child: Card(
          child: Stack(children: [
            const Center(child: CircularProgressIndicator()),
            FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image:
                  'https://img.youtube.com/vi/${widget.movieTrailer.key}/0.jpg',
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            )
          ]),
        ),
      ),
    );
  }
}
