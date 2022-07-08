import 'package:flutter/material.dart';
import 'package:todo_app/screens/song_screen.dart';

import './song_card.dart';
import '../providers/song.dart';

class SongGrid extends StatelessWidget {
  final List<Song> songs;
  const SongGrid({Key? key, required this.songs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /* double height = MediaQuery.of(context).size.height -
        AppBar().preferredSize.height -
        MediaQuery.of(context).padding.top;
    double width = MediaQuery.of(context).size.width;*/
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: songs.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              SongCard(
                songTitle: songs[index].songTitle,
                artisteTitle: songs[index].artisteName,
                songImageUrl: songs[index].songImageUrl,
                height: 190,
                width: 190,
                onTap: () {
                  Navigator.pushNamed(context, SongScreen.routeName,
                      arguments: songs[index].id);
                },
              ),
              const SizedBox(
                width: 7,
              )
            ],
          );
        });
  }
}
