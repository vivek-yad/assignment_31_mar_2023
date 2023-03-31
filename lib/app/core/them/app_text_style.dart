import 'dart:ui';

class AppTextStyle {
  static   TextStyle dnsSans500(Color color, double fontsize,
      {decoration: TextDecoration.none}) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      color: color,
      fontFamily: "DM Sans",
     // decoration: decoration,
      fontSize: fontsize
    );
  }
  static TextStyle dnsSans700(Color color, double fontsize,
      {decoration: TextDecoration.none}) {
    return TextStyle(
        fontWeight: FontWeight.w700,
        color: color,
        fontFamily: "DM Sans",
        decoration: decoration,
        fontSize: fontsize
    );
  }
  static TextStyle dnsSans300(Color color, double fontsize,
      {decoration: TextDecoration.none}) {
    return TextStyle(
        fontWeight: FontWeight.w500,color: color,
        fontFamily: "DM Sans",
        decoration: decoration,
        fontSize: fontsize
    );
  }
  static TextStyle dnsSans400(Color color, double fontsize,
      {decoration: TextDecoration.none}) {
    return TextStyle(
        fontWeight: FontWeight.w500,
        color: color,
        fontFamily: "DM Sans",
        decoration: decoration,
        fontSize: fontsize
    );
  }

  static TextStyle mulish(Color color, double fontsize,
      {decoration: TextDecoration.none}) {
    return TextStyle(
        fontWeight: FontWeight.w500,
        color: color,
        fontFamily: "Mulish",
        decoration: decoration,
        fontSize: fontsize
    );
  }
}
