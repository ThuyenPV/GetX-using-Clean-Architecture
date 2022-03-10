import 'package:base_getx/domain/core/resource/app_colors.dart';
import 'package:base_getx/domain/core/resource/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    brightness: Brightness.light,
    primaryColor: AppColors.blue,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: const ColorScheme.light(
      primary: AppColors.blue,
      secondary: AppColors.blue,
      error: AppColors.blue,
      brightness: Brightness.light,
    ),
    iconTheme: const IconThemeData(
      color: AppColors.black,
      size: 20,
    ),
    appBarTheme: AppBarTheme(
      iconTheme: const IconThemeData(
        color: AppColors.black,
        size: 20,
      ),
      backgroundColor: Colors.white,
      centerTitle: false,
      elevation: 0,
      titleTextStyle: AppStyles.largeSubtitle1.copyWith(color: AppColors.black),
    ),
    textTheme: GoogleFonts.interTextTheme(
      Theme.of(context).textTheme.apply(fontSizeFactor: 1),
    ).copyWith(
      headline1: AppStyles.largeHeading3,
      headline2: AppStyles.largeHeading4,
      headline3: AppStyles.largeHeading5,
      headline4: AppStyles.largeHeading6,
      headline5: AppStyles.largeHeading7,
      headline6: AppStyles.largeSubtitle1,
      // subtitle1: GoogleFonts.inter(),
      // subtitle2: GoogleFonts.inter(),
      bodyText1: AppStyles.smallSmall.copyWith(
        color: Colors.white,
      ),
      bodyText2: AppStyles.smallSmall.copyWith(
        color: AppColors.blue,
      ),
      // caption: GoogleFonts.inter(),
      button: AppStyles.largeSubtitle1,
      // overline: GoogleFonts.inter(),
    ),
  );
}
