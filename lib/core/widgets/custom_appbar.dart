import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_app/core/helpers/app_assets.dart';
import 'package:payment_app/core/themes/colors_manager.dart';
import 'package:payment_app/core/themes/text_styles_manager.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: SvgPicture.asset(
        AppAssets.backButton,
      ),
      backgroundColor: ColorsManager.transparentColor,
      centerTitle: true,
      title: Text(title,
          textAlign: TextAlign.center,
          style: TextStylesManager.fontSize25FontWeight500ColorBlack),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(30.h);
}
