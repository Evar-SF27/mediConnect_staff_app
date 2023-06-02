import 'package:app/utils/colors.dart';
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
            Expanded(
                child: Container(
              height: height,
              color: AppColors.mainColor,
              child: const Center(
                child: Text("MediConnect", style: TextStyle(fontSize: 48)),
              ),
            )),
            SizedBox(width: height * 0.1),
            Expanded(
                child: SizedBox(
                    height: height,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: height * 0.145),
                        Center(
                            child: RichText(
                                text: const TextSpan(children: [
                          TextSpan(
                              text: "Sign In Page",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 32,
                                  color: AppColors.mainColor))
                        ]))),
                        Center(
                            child: RichText(
                                text: const TextSpan(
                                    text:
                                        "Sign in to connect to your Health System",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: AppColors.greyColor))))
                      ],
                    )))
          ]),
    ));
  }
}
