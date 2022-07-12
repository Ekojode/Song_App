import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todo_app/screens/song_screen.dart';
//import 'package:todo_app/screens/container.dart';

import './screens/home_screen.dart';
import './providers/song.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider<Songs>(create: (_) => Songs())],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
              appBarTheme: const AppBarTheme(
            foregroundColor: Colors.black,
            backgroundColor: Colors.white,
          )),
          home: const Home(),
          routes: {
            SongScreen.routeName: (context) => const SongScreen(),
          }),
    );
  }
}
