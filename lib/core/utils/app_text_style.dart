import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle _textStyle({
  required TextDecoration textDeco,
  required Color color,
  required double fontSize,
  required FontWeight fontWeight,
}) {
  return GoogleFonts.manrope(
    color: color,
    decoration: textDeco,
    fontSize: fontSize,
    fontWeight: fontWeight,
  );
}

// bold style
TextStyle regularStyle({
  required Color color,
  required double fontSize,
}) =>
    _textStyle(
      textDeco: TextDecoration.none,
      color: color,
      fontSize: fontSize,
      fontWeight: FontWeight.w600,
    );

// regular style
TextStyle boldStyle({
  required Color color,
  required double fontSize,
}) =>
    _textStyle(
      textDeco: TextDecoration.none,
      color: color,
      fontSize: fontSize,
      fontWeight: FontWeight.w800,
    );
