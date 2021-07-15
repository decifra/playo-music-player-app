class Album {
  Album(this.title, this.artist, this.imageUrl);

  String title;
  String artist;
  String imageUrl;
}

List<Album> albums = <Album>[
  Album('Love goes', 'Sam Smith', 'assets/images/sam_smith.jpeg'),
  Album('Dark paradise', 'Lana del ray', 'assets/images/lana_del_ray.png'),
  Album('Biblical', 'Calum Scott', 'assets/images/calum_scott.jpeg'),
];
