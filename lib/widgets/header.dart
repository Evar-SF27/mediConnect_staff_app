import 'package:app/utils/colors.dart';
import 'package:app/utils/responsive.dart';
import 'package:flutter/material.dart';

Padding header(context) {
  return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Text("MediConnect",
          style: TextStyle(
              fontSize: ResponsiveWidget.isMediumScreen(context) ? 28 : 38,
              fontWeight: FontWeight.w600,
              color: AppColors.mainColor)));
}
