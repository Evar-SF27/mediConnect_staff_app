import 'package:app/utils/colors.dart';
import 'package:app/utils/responsive.dart';
import 'package:app/utils/screen.dart';
import 'package:app/widgets/stateless_tile.dart';
import 'package:flutter/material.dart';

Card mainInfoCard(context) {
  return Card(
      margin: const EdgeInsets.only(top: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
          padding: const EdgeInsets.all(15),
          width: ResponsiveWidget.isLargeScreen(context)
              ? screenWidth(context) * 0.42
              : screenWidth(context) * 0.5,
          height: screenHeight(context) * 0.635,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 10),
                    Text("Today's Consultation",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: AppColors.mainColor))
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Column(
                      children: [
                        tileModelOne(context),
                        tileModelOne(context),
                        tileModelOne(context),
                        tileModelOne(context),
                        tileModelOne(context),
                        tileModelOne(context),
                        tileModelOne(context),
                        tileModelOne(context),
                        tileModelOne(context),
                        tileModelOne(context),
                        tileModelOne(context),
                        tileModelOne(context),
                        tileModelOne(context),
                        tileModelOne(context),
                        tileModelOne(context),
                        tileModelOne(context),
                        tileModelOne(context),
                        tileModelOne(context),
                        tileModelOne(context),
                        tileModelOne(context),
                        tileModelOne(context),
                        tileModelOne(context),
                      ],
                    )
                  ],
                )
              ],
            ),
          )));
}

Card rightInfoCard(context) {
  return Card(
      margin: const EdgeInsets.only(top: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
          padding: const EdgeInsets.all(13),
          width: ResponsiveWidget.isLargeScreen(context)
              ? screenWidth(context) * 0.3
              : screenWidth(context) * 0.33,
          height: screenHeight(context) * 0.31,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 10),
                    Text("Doctor's on duty",
                        style: TextStyle(
                            fontSize: 22,
                            color: AppColors.mainColor,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Column(
                      children: [
                        tileModelTwo(context),
                        tileModelTwo(context),
                        tileModelTwo(context),
                        tileModelTwo(context),
                        tileModelTwo(context),
                        tileModelTwo(context),
                        tileModelTwo(context),
                      ],
                    )
                  ],
                )
              ],
            ),
          )));
}

Container infoCard(context) {
  return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.all(10),
      width: screenWidth(context) * 0.5,
      height: screenHeight(context) * 0.625,
      decoration: const BoxDecoration(
          // color: AppColors.opaqueBlueBackground,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 10),
                Text("Today's Consultation",
                    style: TextStyle(
                        fontSize: 26,
                        color: AppColors.mainColor,
                        fontWeight: FontWeight.bold))
              ],
            )
          ],
        ),
      ));
}
