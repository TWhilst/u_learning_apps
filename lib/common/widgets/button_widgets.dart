import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:u_learning_app/common/utils/app_colors.dart';
import 'package:u_learning_app/common/widgets/app_shadow.dart';
import 'package:u_learning_app/common/widgets/text_widgets.dart';
import 'package:u_learning_app/pages/sign_in/widgets/sign_in_widgets.dart';
import 'package:u_learning_app/pages/sign_up/sign_up.dart';

Widget appButton({
  String buttonName = "",
  double width = 325,
  double height = 50,
  bool isLogin = true,
  BuildContext? context,
  void Function()? funct  ,
}) {
  return GestureDetector(
    onTap: funct,
    child: Container(
      width: width.w,
      height: height.h,
      decoration: appBoxShadow(
        color: isLogin ? AppColors.primaryElement : Colors.white,
        border: Border.all(color: AppColors.primaryFourElementText)
      ),
      child: Center(
        child: text16Normal(
          text: buttonName,
          color: isLogin ? AppColors.primaryBackground : AppColors.primaryText,
        ),
      ),
    ),
  );
}
