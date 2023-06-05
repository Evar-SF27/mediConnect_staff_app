import 'package:app/utils/colors.dart';
import 'package:app/utils/screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Container tileModelOne(context) {
  return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.only(bottom: 10),
      width: screenWidth(context) * 0.39,
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColors.greyColor)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Row(children: [
                Container(
                    width: 50,
                    height: 50,
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        border:
                            Border.all(width: 2, color: AppColors.greyColor),
                        borderRadius: BorderRadius.circular(50)),
                    child: CircleAvatar(
                        radius: 50,
                        backgroundImage:
                            AssetImage("lib/assets/male_avatar.jpeg"))),
                SizedBox(width: 15),
                Column(children: [
                  Row(children: [
                    Text("Patient Name",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold))
                  ]),
                  Text("patient@gmail.com", style: TextStyle(fontSize: 14))
                ])
              ]),
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  Text("Health Status",
                      style:
                          TextStyle(color: AppColors.greyColor, fontSize: 14)),
                  SizedBox(width: 5),
                  Icon(CupertinoIcons.smiley_fill,
                      color: Colors.green, size: 20)
                ],
              )
            ],
          ),
          Column(
            children: [
              Text("11:30AM",
                  style: TextStyle(color: AppColors.greyColor, fontSize: 14))
            ],
          )
        ],
      ));
}

Container tileModelTwo(context) {
  return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.only(bottom: 10),
      width: screenWidth(context) * 0.28,
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColors.greyColor)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Row(children: [
                Container(
                    width: 40,
                    height: 40,
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        border:
                            Border.all(width: 2, color: AppColors.greyColor),
                        borderRadius: BorderRadius.circular(50)),
                    child: CircleAvatar(
                        radius: 50,
                        backgroundImage:
                            AssetImage("lib/assets/female_avatar.png"))),
                SizedBox(width: 10),
                Column(children: [
                  Row(children: [
                    Text("Doctor Name",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold))
                  ]),
                  Row(children: [
                    Text("doctor@gmail.com", style: TextStyle(fontSize: 14))
                  ])
                ])
              ]),
            ],
          ),
          Column(
            children: [
              Text("Present",
                  style: TextStyle(color: AppColors.greyColor, fontSize: 14))
            ],
          )
        ],
      ));
}
