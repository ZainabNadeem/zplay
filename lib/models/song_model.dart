
class Song {
  final String title ;
  final String description;
  final String url;
  final String coverUrl;

  Song({

    required this.title,
    required this.description,
    required this.url,
    required this.coverUrl
  } );


  static List<Song> songs =[
    Song(title: 'Ahla_Haga',
      description: 'Ahla_Haga',
      url: 'assets/music/Ahla_Haga.mp3',
      coverUrl: 'assets/images/Ahla_Haga.jpg',
    ),
    Song(title: 'Mn_Alby',
      description: 'Mn_Alby',
      url: 'assets/music/Mn_Alby.mp3',
      coverUrl: 'assets/images/Mn_Alby.jpg',
    ),
    Song(title: 'Wahda_Wahda',
      description: 'Wahda_Wahda',
      url: 'assets/music/Wahda_Wahda.mp3',
      coverUrl: 'assets/images/Wahda_Wahda.jpg',)
  ];
}