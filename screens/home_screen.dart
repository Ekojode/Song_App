import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/song_card.dart';
import '../widgets/song_grid.dart';
import '../providers/song.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Song> songs = Provider.of<Songs>(context).songs;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(child: SongGrid(songs: songs)),
          Spacer(),
          const SongCard(
            artisteTitle: 'drake',
            songImageUrl:
                "https://www.udiscovermusic.com/wp-content/uploads/2018/09/Drake-Nothing-Was-The-Same-deluxe-album-cover-web-optimised-820.jpg",
            height: 100,
            width: 100,
            songTitle: "Beatles",
          ),
        ],
      ),
    );
  }
}
