import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playo_music/models/album.dart';
import 'package:playo_music/screens/feed_screen/widgets/item_leadings.dart';
import 'package:playo_music/screens/feed_screen/widgets/item_trailing.dart';

class RecentlyPlayed extends StatelessWidget {
  const RecentlyPlayed({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
  }) : super(key: key);

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Recently played',
          style: GoogleFonts.montserrat(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 30.0),
        ),
        SizedBox(
          height: screenHeight / 2.5,
          width: screenWidth * 0.85,
          child: ListView.separated(
            padding: const EdgeInsets.only(top: 10),
            itemCount: albums.length,
            itemBuilder: (BuildContext ctx, int index) {
              return RecentlyPlayedItem(
                screenHeight: screenHeight,
                screenWidth: screenWidth,
                index: index,
              );
            },
            separatorBuilder: (BuildContext ctx, int index) => const Divider(
              color: Colors.grey,
            ),
          ),
        )
      ],
    );
  }
}

class RecentlyPlayedItem extends StatelessWidget {
  const RecentlyPlayedItem({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
    required this.index,
  }) : super(key: key);

  final double screenHeight;
  final double screenWidth;
  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeight / 10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          ItemLeadings(screenWidth: screenWidth, index: index),
          ItemsTrailing(index: index)
        ],
      ),
    );
  }
}
