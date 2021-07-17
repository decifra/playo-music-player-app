import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playo_music/models/album.dart';

class ItemsTrailing extends StatelessWidget {
  const ItemsTrailing({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(
              albums[index].rating.toString(),
              style: GoogleFonts.montserrat(
                color: const Color(0xffFCD122),
                fontWeight: FontWeight.w500,
              ),
            ),
            const Icon(
              Icons.star,
              color: Color(0xffFCD122),
            ),
          ],
        ),
        const SizedBox(
          width: 15,
        ),
        SvgPicture.asset(
          'assets/icons/two-dots.svg',
          height: 6,
          color: Colors.white.withOpacity(0.8),
        )
      ],
    );
  }
}
