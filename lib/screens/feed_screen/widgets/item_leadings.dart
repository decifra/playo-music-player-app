import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playo_music/models/album.dart';

class ItemLeadings extends StatelessWidget {
  const ItemLeadings({
    Key? key,
    required this.screenWidth,
    required this.index,
  }) : super(key: key);

  final double screenWidth;
  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenWidth / 2,
      child: Row(
        children: <Widget>[
          Container(
            height: screenWidth / 6,
            width: screenWidth / 6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              image: DecorationImage(
                  image: AssetImage(
                    albums[index].imageUrl,
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Text>[
              Text(
                albums[index].title,
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18.0,
                ),
              ),
              Text(
                albums[index].artist,
                style: GoogleFonts.montserrat(
                  color: Colors.grey,
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
