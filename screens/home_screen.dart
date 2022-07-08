import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/screens/container.dart';

import '../widgets/text_title.dart';
import '../widgets/app_drawer.dart';
import '../widgets/song_grid.dart';
import '../providers/song.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final songProvider = Provider.of<Songs>(context);
    List<Song> songs = songProvider.songs;
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
