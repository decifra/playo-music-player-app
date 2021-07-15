import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playo_music/constant.dart';
import 'package:playo_music/models/album.dart';
import 'package:playo_music/screens/home_screen/widgets/album_cover_image.dart';
import 'package:playo_music/screens/home_screen/widgets/album_text_info.dart';
import 'package:playo_music/screens/home_screen/widgets/dropdown_music_genre.dart';
import 'package:playo_music/screens/home_screen/widgets/music_player_control.dart';
import 'package:playo_music/screens/home_screen/widgets/player_progress_indicator.dart';

class HomeScreenContent extends StatefulWidget {
  const HomeScreenContent({Key? key}) : super(key: key);

  @override
  _HomeScreenContentState createState() => _HomeScreenContentState();
}

class _HomeScreenContentState extends State<HomeScreenContent> {
  int _current = 2;
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          const DropdownMusicGenres(),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            '$_current of ${albums.length}',
            style: GoogleFonts.montserrat(
                textStyle: const TextStyle(color: kLightBrown)),
          ),
          CarouselSlider(
            options: CarouselOptions(
                aspectRatio: 1.0,
                viewportFraction: 0.65,
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                initialPage: 1,
                onPageChanged: (int index, _) {
                  setState(() {
                    _current = index + 1;
                  });
                }),
            items: getTasksSlider(screenHeight, double.infinity),
          ),
          const SizedBox(
            height: 20.0,
          ),
          PlayerProgressIndicator(screenWidth: screenWidth),
          const SizedBox(
            height: 40.0,
          ),
          MusicPlayerControl(screenWidth: screenWidth)
        ],
      ),
    );
  }
}

List<Widget> getTasksSlider(double height, double width) {
  // ignore: unused_local_variable
  List<Widget> tasksSlider;

  return tasksSlider = albums
      .map(
        (Album item) => Column(
          children: <Widget>[
            AlbumCoverImage(
              url: item.imageUrl,
              rating: item.rating,
            ),
            AlbumTextInfo(
              item: item,
            ),
          ],
        ),
      )
      .toList();
}
