import 'package:app/utils/colors.dart';
import 'package:app/widgets/card.dart';
import 'package:flutter/material.dart';

Column otherAuth() {
  return Column(
    children: [
      const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              Expanded(
                  child: Divider(
                thickness: 1.2,
                color: AppColors.greyColor,
              )),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text("Or continue with",
                    style: TextStyle(color: AppColors.greyColor)),
              ),
              Expanded(
                  child: Divider(
                thickness: 1.2,
                color: AppColors.greyColor,
              ))
            ],
          )),
      const SizedBox(height: 30),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          card(imagePath: "lib/assets/apple.png"),
          const SizedBox(width: 10),
          card(imagePath: "lib/assets/google.png"),
          const SizedBox(width: 10),
          card(imagePath: "lib/assets/twitter.png")
        ],
      ),
      const SizedBox(height: 20),
    ],
  );
}
