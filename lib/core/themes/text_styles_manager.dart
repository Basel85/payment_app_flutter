import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payment_app/core/themes/colors_manager.dart';

class TextStylesManager {
  static TextStyle fontSize25FontWeight500ColorBlack = GoogleFonts.inter(
    fontSize: 25.sp,
    fontWeight: FontWeight.w500,
    color: ColorsManager.blackColor,
  );
  static TextStyle fontSize22FontWeight500ColorBlack =
      fontSize25FontWeight500ColorBlack.copyWith(
    fontSize: 22.sp,
  );
  static TextStyle fontSize18FontWeight400ColorBlack =
      fontSize25FontWeight500ColorBlack.copyWith(
    fontSize: 18.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle fontSize24FontWeight600ColorBlack =
      fontSize25FontWeight500ColorBlack.copyWith(
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
  );
}
