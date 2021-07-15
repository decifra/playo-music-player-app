import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playo_music/models/album.dart';

class AlbumTextInfo extends StatelessWidget {
  const AlbumTextInfo({
    required this.item,
    Key? key,
  }) : super(key: key);

  final Album item;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: Column(
        children: <Widget>[
          Text(
            item.title,
            style: GoogleFonts.montserrat(
              textStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 22.0),
            ),
          ),
          const SizedBox(height: 5.0),
          Text(
            item.artist,
            style: GoogleFonts.montserrat(
              textStyle: const TextStyle(
                color: Colors.grey,
                fontSize: 18.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
