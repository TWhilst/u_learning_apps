import 'package:flutter/material.dart';
import 'package:u_learning_app/common/utils/app_colors.dart';
import 'package:u_learning_app/common/widgets/text_widgets.dart';

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    title: text16Normal(text: "Login", color: AppColors.primaryText),
    // Preferred Size is used when you want an extra spacing below the app bar
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(1),
      child: Container(
        color: Colors.grey.withOpacity(0.5),
        height: 1,
      ),
    ),
  );
}