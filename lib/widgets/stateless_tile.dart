import 'package:app/utils/colors.dart';
import 'package:app/utils/screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Container tileModelOne(context) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 5),
    padding: const EdgeInsets.only(bottom: 5),
    width: screenWidth(context) * 0.39,
    decoration: const BoxDecoration(
      border: Border(bottom: BorderSide(color: AppColors.greyColor)),
    ),
    child: ListTile(
        leading: Container(
            width: 50,
            height: 50,
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: AppColors.greyColor),
                borderRadius: BorderRadius.circular(50)),
            child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("lib/assets/male_avatar.jpeg"))),
        title: Text("Patient Name",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        subtitle: Text("patient@gmail.com", style: TextStyle(fontSize: 14)),
        trailing: SizedBox(
          width: screenWidth(context) * 0.18,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Text("Health Status",
                              style: TextStyle(
                                  color: AppColors.greyColor, fontSize: 14)),
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
                          style: TextStyle(
                              color: AppColors.greyColor, fontSize: 14))
                    ],
                  )
                ],
              )
            ],
          ),
        )),
  );
}

Container tileModelTwo(context) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 5),
    padding: const EdgeInsets.only(bottom: 5),
    width: screenWidth(context) * 0.26,
    decoration: const BoxDecoration(
      border: Border(bottom: BorderSide(color: AppColors.greyColor)),
    ),
    child: ListTile(
        leading: Container(
            width: 40,
            height: 40,
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: AppColors.greyColor),
                borderRadius: BorderRadius.circular(50)),
            child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("lib/assets/female_avatar.png"))),
        title: Text("Patient Name",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        subtitle: Text("patient@gmail.com", style: TextStyle(fontSize: 14)),
        trailing: SizedBox(
          width: screenWidth(context) * 0.07,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Text("11:30AM",
                          style: TextStyle(
                              color: AppColors.greyColor, fontSize: 14))
                    ],
                  )
                ],
              )
            ],
          ),
        )),
  );
}
