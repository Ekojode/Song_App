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
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Card(
          elevation: 2,
          shadowColor: Colors.black38,
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                songImageUrl,
                //   scale: 1.5,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Text(songTitle,
            style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black,
                fontSize: 14)),
        Text(artisteTitle,
            style: const TextStyle(
                fontWeight: FontWeight.w300,
                color: Colors.black,
                fontSize: 12)),
      ],
    );
  }
}
