import 'package:ecommerceapp/utils/app_colors.dart';
import 'package:ecommerceapp/utils/sizedbox_extension.dart';
import 'package:ecommerceapp/utils/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              30.ph,
              CircleAvatar(
                backgroundColor: const Color(0xFF161F28),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
              ),
              30.ph,
              Center(
                child: Text("Hello Again!",
                    textAlign: TextAlign.center,
                    style: AppTextstyle.heading1Style),
              ),
              Center(
                child: Text("Welcome Back You've been Missed!",
                    style: AppTextstyle.heading2Style),
              ),
              50.ph,
              Text(
                "Email address",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              4.ph,
              TextformFieldWidget(),
              20.ph,
              Text(
                "Password",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              4.ph,
              Container(
                decoration: BoxDecoration(
                    color: Color(0xFF161F28),
                    borderRadius: BorderRadius.circular(18)),
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  style: TextStyle(color: Colors.white),
                  obscureText: true,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.remove_red_eye),
                    border: InputBorder.none,
                    hintText: "Enter your password",
                    hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w300),
                    contentPadding: EdgeInsets.only(left: 12, bottom: 7),
                  ),
                ),
              ),
              2.ph,
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 6.0),
                  child: Text(
                    "Recovery Password",
                    style: TextStyle(color: Colors.white, fontSize: 11),
                  ),
                ),
              ),
              20.ph,
              CustomButton(
                bgColor: Colors.blue,
                buttonNameColor: Colors.white,
                buttonName: "Sign in",
              ),
              20.ph,
              CustomButton( 
                bgColor: Color(0xFF161F28),
                buttonNameColor: Colors.white,
                buttonName: 'Sign in with Google',
              ),
              Spacer(),
              Center(
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(color: Colors.white),
                    children: <TextSpan>[
                      TextSpan(text: "Don't have an Account? "),
                      TextSpan(
                          text: 'Sign up for free',
                          style: TextStyle(color: Colors.blue),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print('Terms of Service"');
                            }),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TextformFieldWidget extends StatelessWidget {
  const TextformFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xFF161F28),
          borderRadius: BorderRadius.circular(18)),
      child: TextFormField(
        style: TextStyle(color: Colors.white),
        minLines: 1,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Enter your email",
          hintStyle: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w300),
          contentPadding: EdgeInsets.only(left: 12, bottom: 7),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final Color bgColor;
  final Color buttonNameColor;
  final String buttonName;
  const CustomButton({
    super.key,
    required this.bgColor,
    required this.buttonNameColor,
    required this.buttonName,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 120,
        height: 50,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: bgColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30), // <-- Radius
            ),
          ),
          child: Text(
            buttonName,
            style: TextStyle(color: buttonNameColor),
          ),
        ),
      ),
    );
  }
}
