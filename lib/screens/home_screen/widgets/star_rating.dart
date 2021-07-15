import 'package:flutter/material.dart';

import '../../../constant.dart';

class StarRatting extends StatelessWidget {
  const StarRatting({
    required this.rating,
    Key? key,
  }) : super(key: key);

  final int rating;
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
          children: <Widget>[
            Positioned(
              top: 5,
              left: 0,
              right: 0,
              child: Icon(
                Icons.star,
                color: rating >= 3 ? kLightPink : kThemeLightDark,
                size: 20,
              ),
            ),
            Positioned(
              top: 10,
              left: 55,
              child: Icon(
                Icons.star,
                color: rating >= 2 ? kLightPink : kThemeLightDark,
                size: 20,
              ),
            ),
            Positioned(
              top: 10,
              right: 55,
              child: Icon(
                Icons.star,
                color: rating >= 4 ? kLightPink : kThemeLightDark,
                size: 20,
              ),
            ),
            Positioned(
              top: 25,
              left: 35,
              child: Icon(
                Icons.star,
                color: rating >= 1 ? kLightPink : kThemeLightDark,
                size: 20,
              ),
            ),
            Positioned(
              top: 25,
              right: 35,
              child: Icon(
                Icons.star,
                color: rating >= 5 ? kLightPink : kThemeLightDark,
                size: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
