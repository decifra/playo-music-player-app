import 'package:flutter/material.dart';

import '../../../constant.dart';

class StarRatting extends StatelessWidget {
  const StarRatting({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      height: 180,
      width: 180,
      bottom: -140,
      child: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: kThemeDark,
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: const <Widget>[
            Positioned(
              top: 5,
              left: 0,
              right: 0,
              child: Icon(
                Icons.star,
                color: kLightPink,
                size: 20,
              ),
            ),
            Positioned(
              top: 10,
              left: 55,
              child: Icon(
                Icons.star,
                color: kLightPink,
                size: 20,
              ),
            ),
            Positioned(
              top: 10,
              right: 55,
              child: Icon(
                Icons.star,
                color: kLightPink,
                size: 20,
              ),
            ),
            Positioned(
              top: 25,
              left: 35,
              child: Icon(
                Icons.star,
                color: kLightPink,
                size: 20,
              ),
            ),
            Positioned(
              top: 25,
              right: 35,
              child: Icon(
                Icons.star,
                color: kThemeLightDark,
                size: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
