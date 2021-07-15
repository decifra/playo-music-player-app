import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant.dart';

class MusicPlayerControl extends StatelessWidget {
  const MusicPlayerControl({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Text(
          '0:36',
          style: GoogleFonts.montserrat(
              textStyle: const TextStyle(color: Colors.white),
              fontWeight: FontWeight.w500),
        ),
        SizedBox(
          width: screenWidth / 2.7,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RotatedBox(
                quarterTurns: 2,
                child: SvgPicture.asset(
                  'assets/icons/next_song.svg',
                  height: 30.0,
                  color: Colors.white,
                ),
              ),
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: <Color>[kLightBlue, kPurplePink, kLightPink],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/icons/pause.svg',
                    color: Colors.white,
                    height: 25.0,
                  ),
                ],
              ),
              SvgPicture.asset(
                'assets/icons/next_song.svg',
                height: 30.0,
                color: Colors.white,
              ),
            ],
          ),
        ),
        Text(
          '3:50',
          style: GoogleFonts.montserrat(
              textStyle: const TextStyle(color: Colors.grey),
              fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
