import 'package:app/utils/colors.dart';
import 'package:app/utils/screen.dart';
import 'package:flutter/cupertino.dart';

Container mainInfoCard(context) {
  return Container(
      margin: const EdgeInsets.only(top: 10),
      width: screenWidth(context) * 0.42,
      height: screenHeight(context) * 0.635,
      decoration: const BoxDecoration(
          color: AppColors.opaqueBlueBackground,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [],
        ),
      ));
}

Container rightInfoCard(context) {
  return Container(
      margin: const EdgeInsets.only(top: 10),
      width: screenWidth(context) * 0.3,
      height: screenHeight(context) * 0.31,
      decoration: const BoxDecoration(
          color: AppColors.opaqueBlueBackground,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [],
        ),
      ));
}

Container infoCard(context) {
  return Container(
      margin: const EdgeInsets.only(top: 10),
      width: screenWidth(context) * 0.5,
      height: screenHeight(context) * 0.625,
      decoration: const BoxDecoration(
          color: AppColors.opaqueBlueBackground,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [],
        ),
      ));
}
