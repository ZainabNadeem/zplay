import 'package:zplay/models/song_model.dart';

class Playlist {
  final String title;
  final List<Song> songs;
  final String imageUrl;

  Playlist({
      required this.title,
    required this.songs,
    required this.imageUrl
  });
static List<Playlist> playlists=[
  Playlist(
    title: 'Music1',
    songs: Song.songs,
    imageUrl:
      'https://images.unsplash.com/photo-1510915361894-db8b60106cb1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
  ),
  Playlist(
    title: 'Rock & RocK',
    songs: Song.songs,
    imageUrl:
    'https://images.unsplash.com/photo-1588693951525-7b0be0fc710f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
  ),
  Playlist(
    title: 'Techno',
    songs: Song.songs,
    imageUrl:
    'https://images.unsplash.com/photo-1565035010268-a3816f98589a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80',
  ),
  Playlist(
    title: 'Ramintic',
    songs: Song.songs,
    imageUrl:
    'https://images.unsplash.com/photo-1485579149621-3123dd979885?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1031&q=80',
  ),
  Playlist(
    title: 'SadSong',
    songs: Song.songs,
    imageUrl:
    'https://media.istockphoto.com/id/1300324580/photo/young-pink-hair-girl-listening-music-in-headphones.jpg?s=612x612&w=is&k=20&c=-arwabTHBaELgNWikK-4xbpFXDIWaviJF5l7SKNQTuE=',
  ),
];
}