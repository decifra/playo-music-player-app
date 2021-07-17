import 'package:flutter/material.dart';
import 'package:playo_music/screens/feed_screen/widgets/top_info_card.dart';
import 'package:playo_music/screens/feed_screen/widgets/top_tool_bar.dart';

import '../../constant.dart';
import 'containers/recently_played.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kThemeLightDark,
      body: Column(
        children: <Widget>[
          const TopToolBar(),
          TopInfoCard(screenWidth: screenWidth),
          const SizedBox(
            height: 30.0,
          ),
          RecentlyPlayed(screenHeight: screenHeight, screenWidth: screenWidth),
        ],
      ),
    );
  }
}
