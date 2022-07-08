import 'package:flutter/material.dart';

import './song.dart';

class PlayList {
  final String title;
  final List<Song> songs;

  PlayList({required this.title, required this.songs});
}

class PlayLists with ChangeNotifier {
  final Map<String, PlayList> _playLists = {};
}
