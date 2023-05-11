import 'package:flutter/material.dart';
import '../models/playlist_model.dart';


class PlaylistScreen extends StatelessWidget {
  const PlaylistScreen ({Key? key}): super (key: key);
  @override
  Widget build(BuildContext context)
  {
    List<Playlist> playlists = Playlist.playlists;
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.deepPurple.shade800.withOpacity(0.8),
                Colors.deepPurple.shade200.withOpacity(0.8),
              ])
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar:  AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text('playlist'),
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [

            ],
          ),
        ),

      ),
    );
  }
}



class Playlist{

}