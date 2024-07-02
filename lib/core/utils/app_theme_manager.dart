import 'package:flutter/material.dart';

import 'constants.dart';

class AppThemeManager {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    iconTheme: const IconThemeData(
      color: Constants.primaryColor,
    ),
  );
  static const TextStyle textStyle20 = TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w300,
    fontSize: 20,
    color: Colors.black,
    
  );
  static const TextStyle textStyle16 = TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    fontSize: 16,
    color: Colors.black,
  );
  static const TextStyle textStyle14 = TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    fontSize: 14,
    color: Color(0xff596787),
  );
  static const TextStyle textStyle28 = TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    fontSize: 28,
    color: Colors.black,
  );
  static const TextStyle textStyle24 = TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w300,
    fontSize: 24,
    color: Colors.black,
  );
}
