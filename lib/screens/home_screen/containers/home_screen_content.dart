import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playo_music/constant.dart';
import 'package:playo_music/models/album.dart';

class HomeScreenContent extends StatelessWidget {
  const HomeScreenContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          DropdownButton<String>(
            value: '5Star music',
            icon: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: SvgPicture.asset(
                'assets/icons/down-arrow.svg',
                height: 15,
                color: Colors.white,
              ),
            ),
            elevation: 16,
            style: const TextStyle(color: Colors.deepPurple),
            underline: Container(
              height: 0,
              color: Colors.transparent,
            ),
            onChanged: (String? newValue) {
              debugPrint(newValue);
            },
            items: <String>['5Star music']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            '21 of 189',
            style: GoogleFonts.montserrat(
                textStyle: const TextStyle(color: kLightBrown)),
          ),
          CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 1.0,
              viewportFraction: 0.65,
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
              initialPage: 1,
            ),
            items: getTasksSlider(screenHeight, double.infinity),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Stack(
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
          ),
          const SizedBox(
            height: 40.0,
          ),
          Row(
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
                              colors: <Color>[
                                kLightBlue,
                                kPurplePink,
                                kLightPink
                              ],
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
          )
        ],
      ),
    );
  }
}

List<Widget> getTasksSlider(double height, double width) {
  // ignore: unused_local_variable
  List<Widget> tasksSlider;

  return tasksSlider = albums
      .map(
        (Album item) => Column(
          children: <Widget>[
            Expanded(
              child: Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                          image: AssetImage(item.imageUrl), fit: BoxFit.cover),
                    ),
                  ),
                  const StarRatting()
                ],
              ),
            ),
            AlbumTextInfo(
              item: item,
            ),
          ],
        ),
      )
      .toList();
}

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
