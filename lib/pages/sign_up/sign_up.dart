import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:u_learning_app/common/widgets/app_bar.dart';
import 'package:u_learning_app/common/widgets/app_text_field.dart';
import 'package:u_learning_app/common/widgets/button_widgets.dart';
import 'package:u_learning_app/common/widgets/text_widgets.dart';
import 'package:u_learning_app/pages/sign_in/widgets/sign_in_widgets.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30.h),
            // top login message
            Center(
              child:
                  text14Normal(text: "Enter your details below & free sign up"),
            ),
            SizedBox(height: 50.h),

            // username text box
            appTextField(
              text: "User name",
              iconName: "assets/icons/user.png",
              hintText: "Enter your user name",
            ),

            // email text box
            appTextField(
              text: "Email",
              iconName: "assets/icons/user.png",
              hintText: "Enter your email address",
            ),

            SizedBox(height: 20.h),

            // password text box
            appTextField(
              text: "Password",
              iconName: "assets/icons/lock.png",
              hintText: "Enter your password",
              obscureText: true,
            ),

            SizedBox(height: 20.h),

            // password text box
            appTextField(
              text: "Confirm your password",
              iconName: "assets/icons/lock.png",
              hintText: "Confirm your password",
              obscureText: true,
            ),
            SizedBox(height: 20.h),
            // forget text
            Container(
              margin: EdgeInsets.only(left: 25.w),
              child: text14Normal(text: "By creating an account, you agree with our terms and conditions"),
            ),
            SizedBox(height: 100.h),
            // app login button
            Center(
              child: appButton(
                buttonName: "Sign Up",
                isLogin: true,
                context: context,
                funct: () {}
              ),
            ),
            // "Login"
          ],
        ),
      ),
    );
  }
}
