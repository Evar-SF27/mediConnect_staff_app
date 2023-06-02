import 'package:app/utils/colors.dart';
import 'package:app/utils/responsive.dart';
import 'package:app/widgets/button.dart';
import 'package:app/widgets/input.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SizedBox(
      height: height,
      width: width,
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ResponsiveWidget.isSmallScreen(context)
                ? const SizedBox()
                : Expanded(
                    child: Container(
                    height: height,
                    color: AppColors.mainColor,
                    child: const Center(
                      child:
                          Text("MediConnect", style: TextStyle(fontSize: 48)),
                    ),
                  )),
            SizedBox(width: height * 0.07),
            Expanded(
                child: SizedBox(
                    height: height,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: height * 0.05),
                        SizedBox(height: height * 0.2),
                        const Center(
                            child: Text("MediConnect",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 38,
                                    color: AppColors.lightColor))),
                        const SizedBox(height: 5),
                        const Center(
                            child: Text(
                                "Sign in to connect to your Health System",
                                style: TextStyle(
                                    fontSize: 18, color: AppColors.greyColor))),
                        SizedBox(height: height * 0.064),
                        emailInputField(
                            controller: null,
                            hideText: false,
                            labelText: "Email"),
                        SizedBox(height: height * 0.04),
                        formInputField(
                            controller: null,
                            hideText: true,
                            labelText: "Password"),
                        Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 28),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  GestureDetector(
                                    onTap: () {},
                                    child: const Text("Forgot Password",
                                        style: TextStyle(
                                            color: AppColors.greyColor)),
                                  )
                                ])),
                        SizedBox(height: height * 0.04),
                        button(onTap: null, text: "Sign In")
                      ],
                    ))),
            SizedBox(width: height * 0.07),
          ]),
    ));
  }
}
