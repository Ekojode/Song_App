//import 'dart:async';

import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;

class Song {
  final String songTitle;
  final String artisteName;
  final String songImageUrl;
  final String songAudioUrl;
  final String id;
  final bool isFavourite;

  Song({
    required this.id,
    required this.songTitle,
    required this.songImageUrl,
    required this.artisteName,
    required this.songAudioUrl,
    this.isFavourite = false,
  });
}

class Songs with ChangeNotifier {
  final List<Song> _songs = [
    Song(
        id: "s1",
        songTitle: "Buga",
        songImageUrl:
            "https://i0.wp.com/www.talktalktoday.com.ng/wp-content/uploads/2022/05/Screenshot_20220516-220729_Chrome.jpg?fit=944%2C965&ssl=1",
        artisteName: "Kizz Daniel & Tekno",
        songAudioUrl: "https://open.spotify.com/album/0nNEQYgoVlVYZEOrAC2D3h"),
    Song(
        id: "s2",
        songTitle: "Ojuelegba",
        songImageUrl:
            "https://upload.wikimedia.org/wikipedia/en/2/2f/WIzid_-_Ay%E1%BB%8D_%28Joy%29_album_cover.jpg",
        artisteName: "Wizkid",
        songAudioUrl: ""),
    Song(
        id: "s3",
        songTitle: "Ojuelegba",
        songImageUrl:
            "https://upload.wikimedia.org/wikipedia/en/2/2f/WIzid_-_Ay%E1%BB%8D_%28Joy%29_album_cover.jpg",
        artisteName: "Wizkid",
        songAudioUrl: ""),
    Song(
        id: "s4",
        songTitle: "Beatles",
        songImageUrl:
            "https://www.udiscovermusic.com/wp-content/uploads/2018/09/Drake-Nothing-Was-The-Same-deluxe-album-cover-web-optimised-820.jpg",
        artisteName: "Drake",
        songAudioUrl: ''),
    /*    Song(id: "s5", songTitle: songTitle, songImageUrl: songImageUrl, artisteName: artisteName, songAudioUrl: songAudioUrl),
        Song(id: "s6", songTitle: songTitle, songImageUrl: songImageUrl, artisteName: artisteName, songAudioUrl: songAudioUrl),
        Song(id: "s7", songTitle: songTitle, songImageUrl: songImageUrl, artisteName: artisteName, songAudioUrl: songAudioUrl),
        Song(id: "s8", songTitle: songTitle, songImageUrl: songImageUrl, artisteName: artisteName, songAudioUrl: songAudioUrl),
        Song(id: "s9", songTitle: songTitle, songImageUrl: songImageUrl, artisteName: artisteName, songAudioUrl: songAudioUrl),
        Song(id: "s10", songTitle: songTitle, songImageUrl: songImageUrl, artisteName: artisteName, songAudioUrl: songAudioUrl)*/
  ];

  List<Song> get songs {
    return _songs;
  }

  Song findById(String id) {
    final index = _songs.indexWhere((song) => song.id == id);
    return _songs[index];
  }

  final String clientlId = "dde284aca61e44898bd1f096bd2f7b62";
  final String clientSecret = "6306d1f88c14463794c72ea2b8d6b8bc";

  /* Future<void> fetchTrack() async {
    final url = Uri.parse('https://spotify23.p.rapidapi.com/tracks/');

    //  final param = {ids: '4WNcduiCmDNfmTEz7JvmLv'};

    final response = await http.get(url, headers: {
      'X-RapidAPI-Key': '0b6cb3574cmsh05a61de8fc20b13p1cdaaejsn5d9e78872ed1',
      'X-RapidAPI-Host': 'spotify23.p.rapidapi.com'
    });

    print(response.body);
  }*/
}
