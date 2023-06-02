import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/colors.dart';

class PasswordInputField extends StatefulWidget {
  final String labelText;
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  const PasswordInputField(
      {super.key, required this.controller, required this.labelText});

  @override
  State<PasswordInputField> createState() => _PasswordInputFieldState();
}

class _PasswordInputFieldState extends State<PasswordInputField> {
  bool hideText = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: TextFormField(
        controller: widget.controller,
        obscureText: hideText,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) {
          value != null && value.length < 6
              ? "Enter minimum of 6 characters"
              : null;
          return null;
        },
        decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
                borderSide: BorderSide(color: AppColors.greyColor)),
            focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
                borderSide: BorderSide(color: AppColors.lightColor)),
            labelText: widget.labelText,
            labelStyle: const TextStyle(color: AppColors.greyColor),
            suffixIcon: IconButton(
                icon: Icon(
                    hideText ? CupertinoIcons.eye_slash : CupertinoIcons.eye),
                onPressed: () {
                  setState(() {
                    hideText = !hideText;
                  });
                }),
            suffixIconColor: AppColors.lightColor),
      ),
    );
  }
}
