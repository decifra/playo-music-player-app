class Album {
  Album(this.title, this.artist, this.imageUrl, this.rating);

  String title;
  String artist;
  String imageUrl;
  int rating;
}

List<Album> albums = <Album>[
  Album('Love goes', 'Sam Smith', 'assets/images/sam_smith.jpeg', 4),
  Album('Dark paradise', 'Lana del ray', 'assets/images/lana_del_ray.png', 5),
  Album('Biblical', 'Calum Scott', 'assets/images/calum_scott.jpeg', 3),
];
