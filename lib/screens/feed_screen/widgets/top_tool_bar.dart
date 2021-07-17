import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TopToolBar extends StatelessWidget {
  const TopToolBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SvgPicture.asset(
              'assets/icons/search_circle.svg',
              color: Colors.white70,
              height: 60.0,
            ),
            SvgPicture.asset(
              'assets/icons/profile.svg',
              color: Colors.white70,
              height: 60.0,
            ),
          ],
        ),
      ),
    );
  }
}
