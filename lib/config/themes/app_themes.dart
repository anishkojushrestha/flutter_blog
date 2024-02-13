import 'package:blog/config/constants/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  static final light = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: MyColors.primaryColor),
    fontFamily: GoogleFonts.poppins().fontFamily,
    useMaterial3: true,
  );

  static final dark = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: MyColors.darkColor),
    fontFamily: GoogleFonts.poppins().fontFamily,
    useMaterial3: true,
  );
}
