import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Fonts {
  static TextStyle normalReturn(
      [double fontSize = 16, Color color = Colors.black]) {
    return GoogleFonts.rubik(
        textStyle: const TextStyle(), fontSize: fontSize, color: color);
  }
}
