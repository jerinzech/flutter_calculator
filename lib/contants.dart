import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static Color mainBGColor2 = const Color.fromARGB(255, 9, 10, 14);
  static Color mainBGColor = const Color(0xff1E222D);
  static Color operatorBtnColor = const Color(0xffC16825);
  static Color numberBtnColor = const Color(0xff323848);
  static Color textBtnColor = const Color(0xff4F576A);
}

TextStyle robotoMonoStyle = GoogleFonts.robotoMono();
TextStyle ralewayStyle = GoogleFonts.raleway();
TextStyle robotoFlexStyle = GoogleFonts.robotoFlex();
TextStyle montserratStyle = GoogleFonts.montserrat();
TextStyle poppinsStyle = GoogleFonts.poppins();

class AppTextStyle {
  static TextStyle operatorStyle = montserratStyle.copyWith(
    fontSize: 35,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );
  static TextStyle numberStyle = ralewayStyle.copyWith(
    fontSize: 35,
    fontWeight: FontWeight.w100,
    color: Colors.white,
  );
  static TextStyle textStyle = montserratStyle.copyWith(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
}
