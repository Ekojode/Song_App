import 'package:flutter/material.dart';
import "package:audioplayers/audioplayers.dart";
import 'package:provider/provider.dart';

import '../providers/song.dart';

class SongScreen extends StatefulWidget {
  const SongScreen({Key? key}) : super(key: key);

  static const routeName = "/songScreen";

  @override
  State<SongScreen> createState() => _SongScreenState();
}

class _SongScreenState extends State<SongScreen> with WidgetsBindingObserver {
  final _songPlayer = AudioPlayer();
  final songUrl = UrlSource(
      "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-13.mp3");
  bool _isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  final urls = "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-13.mp3";

  @override
  void initState() {
    _songPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        _isPlaying = state == PlayerState.playing;
      });
    });
    _songPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });
    //  _songPlayer.setSourceUrl(urls);
    _songPlayer.onPositionChanged.listen((event) {
      setState(() {
        position = event;
      });
    });
    super.initState();
  }

  /*@override
  void initState() {
    ambiguate(WidgetsBinding.instance)!.addObserver(this);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.black,
    ));
    _init();
    super.initState();
  }*/

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
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                height: 340,
                child: Column(
                  children: [
                    SizedBox(
                      height: 260,
                      width: 260,
                      child: ClipRRect(
                        child: Image.network(
                          song.songImageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text(
                      song.songTitle,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff091127),
                      ),
                    ),
                    Text(song.artisteName,
                        style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                            fontSize: 14)),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 25,
                child: Row(
                  children: const [
                    Icon(Icons.volume_up),
                    Spacer(),
                    Icon(Icons.repeat),
                    Icon(Icons.shuffle)
                  ],
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                  child: Slider(
                min: 0,
                max: duration.inSeconds.toDouble(),
                onChanged: (double value) async {},
                value: position.inSeconds.toDouble(),
              )),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  children: [
                    Text(position.inSeconds.toString()),
                    const Spacer(),
                    Text(duration.inSeconds.toString())
                  ],
                ),
              ),
              CircleAvatar(
                radius: 35,
                child: IconButton(
                  icon: Icon(
                    _isPlaying ? Icons.pause : Icons.play_arrow,
                  ),
                  iconSize: 50,
                  onPressed: () async {
                    if (_isPlaying) {
                      await _songPlayer.pause();
                      setState(() {
                        _isPlaying = false;
                      });
                    } else {
                      await _songPlayer.play(songUrl);
                      setState(() {
                        _isPlaying = true;
                      });
                      //      "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-13.mp3");
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
