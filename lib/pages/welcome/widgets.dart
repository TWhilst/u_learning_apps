import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:u_learning_app/common/widgets/app_shadow.dart';
import 'package:u_learning_app/common/widgets/text_widgets.dart';

Widget appOnboardingPage(
  PageController controller, BuildContext context, {
  String imagePath = "assets/images/reading.png",
  String title = "",
  String data = "",
  String subtitle = "",
  int index = 0,
}) {
  return Column(
    children: [
      Image.asset(
        imagePath,
        fit: BoxFit.fitWidth,
      ),
      Container(
        margin: const EdgeInsets.only(top: 15),
        child: text24Normal(text: title),
      ),
      Container(
        margin: EdgeInsets.only(top: 15.h),
        padding: EdgeInsets.only(left: 30.w, right: 30.w),
        child: text16Normal(text: subtitle),
      ),
      _nextButton(index, controller, context,),
    ],
  );
}

Widget _nextButton(
  int index,
  PageController controller,
    BuildContext context,
) {
  // using this (_) before an instance says that we don't want to use the instance outside the page
  return GestureDetector(
    onTap: () {
      print("The index is $index");
      if (index < 3) {
        controller.animateToPage(
          index,
          duration: const Duration(milliseconds: 300),
          curve: Curves.linear,
        );
      } else {
        // if you are to use PushNamed Navigator
        Navigator.of(context).pushNamed("signIn");
        // Navigator.of(context).push(MaterialPageRoute(builder: (_) => const SignIn()));
      }
    },
    child: Container(
      width: 325.w,
      height: 50.h,
      margin: EdgeInsets.only(top: 100.h, left: 25.w, right: 25.w),
      decoration: appBoxShadow(),
      child: Center(
        child: text16Normal(text: index<3? "Next" : "Get started", color: Colors.white),
      ),
    ),
  );
}
