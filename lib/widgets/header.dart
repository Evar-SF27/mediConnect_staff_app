import 'package:app/utils/colors.dart';
import 'package:app/utils/responsive.dart';
import 'package:flutter/material.dart';

Padding header(context) {
  return Padding(
      padding: ResponsiveWidget.isLargeScreen(context)
          ? const EdgeInsets.symmetric(horizontal: 10)
          : const EdgeInsets.symmetric(horizontal: 0),
      child: ResponsiveWidget.isLargeScreen(context)
          ? const Text("MediConnect",
              style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.w600,
                  color: AppColors.mainColor))
          : const Text("MC",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  color: AppColors.mainColor)));
}
