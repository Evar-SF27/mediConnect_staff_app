import 'package:app/utils/colors.dart';
import 'package:app/utils/responsive.dart';
import 'package:app/widgets/button.dart';
import 'package:app/widgets/input.dart';
import 'package:app/widgets/other_auth.dart';
import 'package:flutter/material.dart';
import '../widgets/password.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Form(
      key: formKey,
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
                          Text("MediConnect", style: TextStyle(fontSize: 38)),
                    ),
                  )),
            SizedBox(width: width < 400 ? width * 0.05 : width * 0.07),
            Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                  SizedBox(width: height * 0.05),
                  SizedBox(height: width < 400 ? height * 0.1 : height * 0.2),
                  const Center(
                      child: Text("MediConnect",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 45,
                              color: AppColors.lightColor))),
                  const SizedBox(height: 5),
                  const Center(
                      child: Text("Connect to your Health System",
                          style: TextStyle(
                              fontSize: 18, color: AppColors.greyColor))),
                  SizedBox(height: height * 0.064),
                  formInputField(
                      controller: usernameController,
                      hideText: true,
                      labelText: "Username"),
                  SizedBox(height: height * 0.03),
                  emailInputField(
                      controller: emailController,
                      hideText: false,
                      labelText: "Email"),
                  SizedBox(height: height * 0.03),
                  PasswordInputField(
                      controller: passwordController, labelText: "Password"),
                  SizedBox(height: height * 0.04),
                  button(onTap: null, text: "Register"),
                  SizedBox(height: height * 0.04),
                  otherAuth(),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 55),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RegisterScreen()));
                        },
                        child: const Row(
                          children: [
                            Text("Already have an account?"),
                            SizedBox(width: 4),
                            Text("Sign In",
                                style: TextStyle(
                                    color: AppColors.lightColor,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      )),
                  SizedBox(height: height * 0.1),
                ])),
            SizedBox(width: width < 400 ? width * 0.05 : width * 0.07),
          ]),
    ))));
  }
}
