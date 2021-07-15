import 'package:flutter/material.dart';

import '../../../constant.dart';

class PlayerProgressIndicator extends StatelessWidget {
  const PlayerProgressIndicator({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 10.0,
          width: screenWidth * 0.85,
          decoration: BoxDecoration(
              color: kThemeLightDark,
              borderRadius: BorderRadius.circular(20.0)),
        ),
        Container(
          height: 10.0,
          width: screenWidth * 0.35,
          decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: kLightPink.withOpacity(0.2),
                  offset: const Offset(0, 5),
                  blurRadius: 20.0)
            ],
            borderRadius: BorderRadius.circular(20.0),
            gradient: const LinearGradient(
              colors: <Color>[kLightBlue, kPurplePink, kLightPink],
            ),
          ),
        )
      ],
    );
  }
}
