import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:u_learning_app/common/widgets/app_shadow.dart';
import 'package:u_learning_app/common/widgets/image_widgets.dart';
import 'package:u_learning_app/common/widgets/text_widgets.dart';

Widget appTextField({
  String text = "",
  String iconName = "",
  String hintText = "",
  bool obscureText = false,
}) {
  return Container(
    padding: EdgeInsets.only(left: 25.w, right: 25.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        text14Normal(text: text),
        SizedBox(height: 5.h,),
        Container(
          width: 325.w,
          height: 50.h,
          decoration: appBoxDecorationTextField(),
          // The row contains icons and text field
          child: Row(
            children: [
              // for showing icons
              Container(
                margin: EdgeInsets.only(left: 17.w),
                child: appImage(imagePath: iconName),
              ),
              // for text field
              Expanded(
                child: SizedBox(
                  width: 280.w,
                  height: 50.h,
                  child: TextField(
                    // this will show all the types of keyboard type
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      hintText: hintText,
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      // this is the border that shows when the text field is not in use
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      // this is the border that shows when you touch a text field
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      disabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                    onChanged:(value) {} ,
                    // this is the max no of lines the text field can create
                    maxLines: 1,
                    // this is to stop the text field from correcting users
                    autocorrect: false,
                    // by default its false
                    obscureText: obscureText,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
