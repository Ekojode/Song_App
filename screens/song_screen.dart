import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/song.dart';

class SongScreen extends StatefulWidget {
  const SongScreen({Key? key}) : super(key: key);

  static const routeName = "/songScreen";

  @override
  State<SongScreen> createState() => _SongScreenState();
}

class _SongScreenState extends State<SongScreen> {
  @override
  Widget build(BuildContext context) {
    final songId = ModalRoute.of(context)!.settings.arguments as String;
    final songProvider = Provider.of<Songs>(context);
    final song = songProvider.findById(songId);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          song.songTitle,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
