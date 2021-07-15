import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_svg/svg.dart';
import 'package:playo_music/constant.dart';

import 'containers/home_screen_content.dart';

/// Home screen of the application
class HomeScreen extends StatelessWidget {
  /// Home Screen constructor
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kThemeLightDark,
      body: Column(
        children: <Widget>[
          ClipPath(
            clipper: OvalBottomBorderClipper(),
            child: Container(
              height: screenHeight * 0.9,
              width: double.infinity,
              color: kThemeDark,
              child: HomeScreenContent(),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SvgPicture.asset(
                'assets/icons/repeat.svg',
                height: 25,
                color: Colors.white,
              ),
              SvgPicture.asset(
                'assets/icons/sound_bar.svg',
                height: 25,
                color: Colors.white,
              ),
              SvgPicture.asset(
                'assets/icons/shuffle.svg',
                height: 25,
                color: kPurplePink,
              ),
            ],
          )
        ],
      ),
    );
  }
}
