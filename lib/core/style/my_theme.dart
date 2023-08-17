import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static const Color primaryColor = Color(0xFFB7935F);
  static const Color counterColor = Color(0xffC9B497);
  static const Color yellowColor = Color(0xFFFACC1D);
  static const Color blackColor = Color(0xFF242424);
  static const Color WhiteColor = Color(0xFFFFFFFF);
  static const Color BlueBlack = Color(0xFF141A2E);
  static const Color counterDBlack = Color(0xFF161B31);
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    focusColor: Colors.white,
    primaryColor: primaryColor,
    canvasColor: counterColor,
    cardColor: counterColor,
    dividerColor: primaryColor,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      titleTextStyle: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Color(0xFF242424),
      ),
      iconTheme: IconThemeData(
        color: blackColor,
      ),
    ),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Color(0xFF242424),
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: Color(0xFF242424),
      ),
      bodySmall: GoogleFonts.elMessiri(
        fontSize: 20,
        fontWeight: FontWeight.normal,
        color: Color(0xFF242424),
      ),
      titleMedium: GoogleFonts.quicksand(
        fontSize: 27,
        fontWeight: FontWeight.w500,
        color: Colors.black,
    ),),
    bottomNavigationBarTheme:

    BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: primaryColor,
      selectedItemColor: blackColor,
      unselectedItemColor: Colors.white,
    ),
  );
  static ThemeData darkTheme = ThemeData(

    focusColor: BlueBlack,
    canvasColor: counterDBlack,
    primaryColor: yellowColor,
    cardColor: counterDBlack,
    dividerColor: yellowColor,
    scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
       centerTitle: true,
       backgroundColor: Colors.transparent,
        elevation: 0.0,
           titleTextStyle: GoogleFonts.elMessiri(
           fontSize: 30,
           fontWeight: FontWeight.bold,
           color: Colors.white,

  ),
          iconTheme: IconThemeData(
            color: Colors.white,
          )
  ),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color:Colors.white,
      ),
      bodySmall: GoogleFonts.elMessiri(
        fontSize: 20,
        fontWeight: FontWeight.normal,
        color: Colors.white,
      ),
  titleMedium: GoogleFonts.quicksand(
  fontSize: 25,
  fontWeight: FontWeight.w500,
  color: yellowColor,
    ),),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    showSelectedLabels: false,
    showUnselectedLabels: false,
    backgroundColor: BlueBlack,
    selectedItemColor: yellowColor,
    unselectedItemColor: Colors.white,
  ),
  );
}
