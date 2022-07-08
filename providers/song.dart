import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
  final List<Song> _songs = [
    Song(
        songTitle: "Ojuelegba",
        songImage:
            "https://upload.wikimedia.org/wikipedia/en/2/2f/WIzid_-_Ay%E1%BB%8D_%28Joy%29_album_cover.jpg",
        artisteName: "Wizkid"),
    Song(
        songTitle: "Ojuelegba",
        songImage:
            "https://upload.wikimedia.org/wikipedia/en/2/2f/WIzid_-_Ay%E1%BB%8D_%28Joy%29_album_cover.jpg",
        artisteName: "Wizkid"),
    Song(
        songTitle: "Ojuelegba",
        songImage:
            "https://upload.wikimedia.org/wikipedia/en/2/2f/WIzid_-_Ay%E1%BB%8D_%28Joy%29_album_cover.jpg",
        artisteName: "Wizkid"),
    Song(
        songTitle: "Beatles",
        songImage:
            "https://www.udiscovermusic.com/wp-content/uploads/2018/09/Drake-Nothing-Was-The-Same-deluxe-album-cover-web-optimised-820.jpg",
        artisteName: "Drake")
  ];

  List<Song> get songs {
    return _songs;
  }

  final String clientlId = "dde284aca61e44898bd1f096bd2f7b62";
  final String clientSecret = "6306d1f88c14463794c72ea2b8d6b8bc";

  Future<void> fetchTrack() async {
    final url = Uri.parse('https://spotify23.p.rapidapi.com/tracks/');

    //  final param = {ids: '4WNcduiCmDNfmTEz7JvmLv'};

    final response = await http.get(url, headers: {
      'X-RapidAPI-Key': '0b6cb3574cmsh05a61de8fc20b13p1cdaaejsn5d9e78872ed1',
      'X-RapidAPI-Host': 'spotify23.p.rapidapi.com'
    });

    print(response.body);
  }
}
