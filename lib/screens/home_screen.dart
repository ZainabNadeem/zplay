import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:zplay/models/playlist_model.dart';
import 'package:zplay/screens/song_screen.dart';
import 'package:zplay/widgets/playlist_card.dart';
import 'package:zplay/widgets/section_header.dart';

import '../models/song_model.dart';
import '../widgets/song_card.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    List<Song> songs = Song.songs;
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
        appBar: const _CustomAppBar(),
        bottomNavigationBar: const _CustomNavBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const DiscoverMusic(),
              _TrendingMusic(songs: songs),
              _PlaylistMusic(playlists: playlists)
            ],
          ),
        ),

      ),
    );
  }
}

class _PlaylistMusic extends StatelessWidget {
  const _PlaylistMusic({
    Key? key,
    required this.playlists,
  }) : super(key: key);

  final List<Playlist> playlists;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
         const SectionHeader(title: 'playlists'),
        ListView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.only(top: 20),
          physics: const NeverScrollableScrollPhysics(),
          itemCount: playlists.length,
            itemBuilder: ((context, index)
        {
           return PlaylistCard(playlist: playlists[index]);

        }))
        ],
      ),
    );
  }
}


class _TrendingMusic extends StatelessWidget {
  const _TrendingMusic({
    Key? key,
    required this.songs,
  }) : super(key: key);

  final List<Song> songs;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
        top: 20.0,
        bottom: 20.0,
      ),
      child: Column(
        children: [
         const Padding(
            padding:  EdgeInsets.only(right: 20.0),
            child: SectionHeader(title : 'Trending Music'),
          ),
          const SizedBox(height: 20),
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.27,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: songs.length,
                itemBuilder: (context,index){
                 return SongCard(song: songs[index]);
                },
                ),
          ),
        ],
      ),
    );
  }
}



class DiscoverMusic extends StatelessWidget {
  const DiscoverMusic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome',
            style: Theme.of(context)
            .textTheme
            .bodyLarge!
          ),
          const SizedBox(height: 5),
          Text(
            'Enjoy your Favorite music',
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          TextFormField(
            decoration: InputDecoration(
              isDense: true,
              filled: true,
              fillColor: Colors.white,
              hintText: 'Search',
              hintStyle: Theme.of(context)
                  .textTheme.bodyMedium!
                  .copyWith(color: Colors.grey.shade400),
              prefixIcon:
                Icon(
                  Icons.search,
                  color: Colors.grey.shade400

                ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide: BorderSide.none,
              )

            ),
          )
        ],
      ),
    );
  }
}

class _CustomNavBar extends StatelessWidget {
  const _CustomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.deepPurple.shade800,
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.white,
      showUnselectedLabels: false,
      showSelectedLabels: false,

      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home'),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_outline),
          label: 'Favorites'),
        BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_outline),
            label: 'Play'),
        BottomNavigationBarItem(
            icon: Icon(Icons.people_outline),
            label: 'Profile') ]  ,
    );
  }
}


class   _CustomAppBar extends StatelessWidget with PreferredSizeWidget{
  const _CustomAppBar ({Key? key,}): 
      super(key: key);
  @override
  Widget build(BuildContext context){
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation:0,
      leading: const Icon(Icons.grid_view_rounded),
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 20),
          child: const CircleAvatar(
            backgroundImage:  NetworkImage('https://images.pexels.com/photos/462118/pexels-photo-462118.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
          ),

        )
      ],
      
    ) ;
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(56.0);
 
}