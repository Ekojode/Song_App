import 'package:flutter/material.dart';

class SongCard extends StatelessWidget {
  final String songTitle;
  final String artisteTitle;
  final String songImageUrl;
  final double height;
  final double width;
  const SongCard({
    Key? key,
    required this.songTitle,
    required this.artisteTitle,
    required this.songImageUrl,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 2,
          shadowColor: Colors.black38,
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          ),
        ),
        Text(songTitle),
        Text(artisteTitle),
      ],
    );
  }
}
