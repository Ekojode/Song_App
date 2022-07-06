import 'package:flutter/material.dart';

import './song_card.dart';
import '../providers/song.dart';

class SongGrid extends StatelessWidget {
  final List<Song> songs;
  const SongGrid({Key? key, required this.songs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height -
        AppBar().preferredSize.height -
        MediaQuery.of(context).padding.top;
    double width = MediaQuery.of(context).size.width;
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: songs.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              SongCard(
                  songTitle: songs[index].songTitle,
                  artisteTitle: songs[index].artisteName,
                  songImageUrl: songs[index].songImage,
                  height: height * 0.3,
                  width: width * 0.5),
              const SizedBox(
                width: 10,
              )
            ],
          );
        });
  }
}
