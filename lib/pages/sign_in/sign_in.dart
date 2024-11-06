import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:u_learning_app/common/widgets/app_bar.dart';
import 'package:u_learning_app/common/widgets/app_text_field.dart';
import 'package:u_learning_app/common/widgets/button_widgets.dart';
import 'package:u_learning_app/common/widgets/text_widgets.dart';
import 'package:u_learning_app/pages/sign_in/widgets/sign_in_widgets.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // top login button
            thirdPartyLogin(),
            // top login message
            Center(
              child: text14Normal(text: "Or use your email account to log in"),
            ),
            SizedBox(height: 50.h),
            // email text box
            appTextField(
                text: "Email",
                iconName: "assets/icons/user.png",
                hintText: "Enter your email address"),

            SizedBox(height: 20.h),

            // password text box
            appTextField(
              text: "Password",
              iconName: "assets/icons/lock.png",
              hintText: "Enter your password",
              obscureText: true,
            ),
            SizedBox(height: 20.h),
            // forget text
            Container(
              margin: EdgeInsets.only(left: 25.w),
              child: textUnderline(text: "Forgot password"),
            ),
            SizedBox(height: 100.h),
            // app login button
            Center(
              child: appButton(buttonName: "Login"),
            ),
            SizedBox(height: 20.h),
            Center(
              child: appButton(
                buttonName: "Register",
                isLogin: false,
                context: context ,
                funct: () {
                  Navigator.pushNamed(context, "/register");
                }
              ),
            ),
            // "Login"
          ],
        ),
      ),
    );
  }
}
