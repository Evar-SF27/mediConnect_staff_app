import 'package:app/utils/colors.dart';
import 'package:app/utils/responsive.dart';
import 'package:app/widgets/button.dart';
import 'package:app/widgets/input.dart';
import 'package:app/widgets/other_auth.dart';
import 'package:flutter/material.dart';
import '../widgets/password.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

enum Role { staff, doctor, user }

class _LoginScreenState extends State<LoginScreen> {
  Role? selectedRole;
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
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
                  emailInputField(
                      controller: emailController,
                      hideText: false,
                      labelText: "Email"),
                  SizedBox(height: height * 0.03),
                  PasswordInputField(
                      controller: passwordController, labelText: "Password"),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 4),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: const Text("Forgot Password",
                                  style:
                                      TextStyle(color: AppColors.lightColor)),
                            )
                          ])),
                  SizedBox(height: height * 0.03),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 3),
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1, color: AppColors.greyColor),
                            borderRadius: BorderRadius.circular(10)),
                        child: DropdownButton(
                            value: selectedRole,
                            items: const [
                              DropdownMenuItem(
                                  value: Role.staff, child: Text("Staff")),
                              DropdownMenuItem(
                                  value: Role.doctor, child: Text("Doctor")),
                              DropdownMenuItem(
                                  value: Role.user, child: Text("User")),
                            ],
                            isExpanded: true,
                            focusColor: Colors.transparent,
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            underline: const SizedBox.square(),
                            onChanged: (Role? value) {
                              selectedRole = value;
                            }),
                      )),
                  SizedBox(height: height * 0.04),
                  button(onTap: null, text: "Sign In"),
                  SizedBox(height: height * 0.04),
                  otherAuth(),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: GestureDetector(
                        onTap: () {},
                        child: const Row(
                          children: [
                            Text("Don't have a user account?"),
                            SizedBox(width: 4),
                            Text("Register Now",
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
