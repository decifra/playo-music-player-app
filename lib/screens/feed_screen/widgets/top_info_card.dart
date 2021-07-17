import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant.dart';

class TopInfoCard extends StatelessWidget {
  const TopInfoCard({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: screenWidth / 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Your Weekly Music Mix',
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {
                    debugPrint('click');
                  },
                  child: Container(
                    height: 40,
                    width: screenWidth / 3.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      gradient: const LinearGradient(
                        colors: <Color>[
                          Colors.white,
                          kLightPink,
                        ],
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          'Listen',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Image.asset(
                          'assets/icons/listen.png',
                          height: 16.0,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Image.asset(
              'assets/icons/like_icon_3d.png',
            ),
          )
        ],
      ),
    );
  }
}
