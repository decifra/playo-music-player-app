import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DropdownMusicGenres extends StatelessWidget {
  const DropdownMusicGenres({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: '5Star music',
      icon: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: SvgPicture.asset(
          'assets/icons/down-arrow.svg',
          height: 15,
          color: Colors.white,
        ),
      ),
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 0,
        color: Colors.transparent,
      ),
      onChanged: (String? newValue) {
        debugPrint(newValue);
      },
      dropdownColor: Colors.grey,
      items:
          <String>['5Star music'].map<DropdownMenuItem<String>>((String value) {
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
    );
  }
}
