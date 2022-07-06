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
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: BorderSide(
              color: Colors.grey.withOpacity(0.2),
              width: 1,
            ),
          ),
          //    elevation: 5,
          shadowColor: Colors.black38,
          child: Container(
            //margin: const EdgeInsets.all(10),
            height: height,
            width: width,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Colors.black38,
                  offset: Offset(
                    5.0,
                    5.0,
                  ),
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                ), //BoxShadow
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(0.0, 0.0),
                  blurRadius: 0.0,
                  spreadRadius: 0.0,
                ),
              ],
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
                fontWeight: FontWeight.bold,
                color: Color(0xff091127),
                fontSize: 18)),
        Text(artisteTitle,
            style: const TextStyle(
                fontWeight: FontWeight.w400, color: Colors.grey, fontSize: 14)),
      ],
    );
  }
}
