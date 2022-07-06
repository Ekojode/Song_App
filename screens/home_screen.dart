import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/text_title.dart';
import '../widgets/app_drawer.dart';
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
      drawer: const AppDrawer(),
      body: Container(
        margin: const EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextTitle(title: "Recommended for you"),
            SizedBox(height: 240, child: SongGrid(songs: songs)),
            const SizedBox(height: 10),
            const TextTitle(title: "My PlayList"),
            SizedBox(height: 240, child: SongGrid(songs: songs)),
          ],
        ),
      ),
    );
  }
}


/*  const SongCard(
              artisteTitle: 'drake',
              songImageUrl:
                  "https://www.udiscovermusic.com/wp-content/uploads/2018/09/Drake-Nothing-Was-The-Same-deluxe-album-cover-web-optimised-820.jpg",
              height: 190,
              width: 190,
              songTitle: "Beatles",
            ),*/