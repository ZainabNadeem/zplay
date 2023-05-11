import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zplay/screens/home_screen.dart';
import 'package:zplay/screens/playlist_screen.dart';
import 'package:zplay/screens/song_screen.dart';
import 'screens/screens.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}): super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

    textTheme: Theme.of(context).textTheme.apply(
      bodyColor: Colors.white,
      displayColor: Colors.white,
    )
      ),
      home: const HomeScreen() ,
     getPages: [
        GetPage(name: '/', page: () => const HomeScreen()),
        GetPage(name: '/song', page: () => const SongScreen()),
       GetPage(name: '/palylist', page: () => const PlaylistScreen()),
    ],
    );
  }
}
