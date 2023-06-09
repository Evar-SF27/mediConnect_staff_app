import 'package:app/utils/colors.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

Padding formInputField(
    {required controller, required bool hideText, required labelText}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15.0),
    child: TextFormField(
      controller: controller,
      obscureText: hideText,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
              borderSide: BorderSide(color: AppColors.greyColor)),
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
              borderSide: BorderSide(color: AppColors.lightColor)),
          labelText: labelText,
          labelStyle: const TextStyle(color: AppColors.greyColor)),
    ),
  );
}

Padding emailInputField(
    {required controller, required bool hideText, required labelText}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15.0),
    child: TextFormField(
      controller: controller,
      obscureText: hideText,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (email) {
        email != null && !EmailValidator.validate(email)
            ? "Enter a valid email"
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
          labelText: labelText,
          labelStyle: const TextStyle(color: AppColors.greyColor)),
    ),
  );
}

Container textInputField(
    {required controller, required bool hideText, required hintText}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 25.0),
    height: 45,
    child: TextField(
      controller: controller,
      obscureText: hideText,
      decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
              borderSide: BorderSide(color: AppColors.greyColor)),
          hintText: hintText,
          hintStyle: const TextStyle(color: AppColors.greyColor)),
    ),
  );
}

Container textField({required controller, required String labelText}) {
  return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextField(
        maxLines: 5,
        decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
                borderSide: BorderSide(color: AppColors.greyColor)),
            focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
                borderSide: BorderSide(color: AppColors.lightColor)),
            labelText: labelText,
            labelStyle: const TextStyle(color: AppColors.greyColor)),
        controller: controller,
      ));
}
