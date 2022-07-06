import 'package:flutter/material.dart';

class Song {
  final String songTitle;
  final String artisteName;
  final String songImage;

  Song({
    required this.songTitle,
    required this.songImage,
    required this.artisteName,
  });
}

class Songs with ChangeNotifier {
  final List<Song> _songs = [];

  List<Song> get songs {
    return _songs;
  }

  final String clientlId = "dde284aca61e44898bd1f096bd2f7b62";
  final String clientSecret = "6306d1f88c14463794c72ea2b8d6b8bc";
}
