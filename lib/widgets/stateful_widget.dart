import 'package:app/utils/colors.dart';
import 'package:app/utils/screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TileModel extends StatefulWidget {
  const TileModel({super.key});

  @override
  State<TileModel> createState() => _TileModelState();
}

class _TileModelState extends State<TileModel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 5),
      width: screenWidth(context) * 0.39,
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColors.greyColor)),
      ),
      child: ListTile(
          leading: Container(
              width: 35,
              height: 35,
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: AppColors.greyColor),
                  borderRadius: BorderRadius.circular(50)),
              child: const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("lib/assets/male_avatar.jpeg"))),
          title: const Text("Patient Name",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          subtitle:
              const Text("patient@gmail.com", style: TextStyle(fontSize: 14)),
          trailing: SizedBox(
            width: screenWidth(context) * 0.22,
            child: const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Column(
                          children: [
                            Text("17/03/23",
                                style: TextStyle(
                                    color: AppColors.greyColor, fontSize: 14)),
                            Text("11:30AM",
                                style: TextStyle(
                                    color: AppColors.greyColor, fontSize: 14))
                          ],
                        )),
                    Column(
                      children: [
                        Text("Dr. Doctor",
                            style: TextStyle(
                                color: AppColors.greyColor, fontSize: 14)),
                        // Text("doctorone@gmail.com",
                        //     style: TextStyle(
                        //         color: AppColors.greyColor, fontSize: 14))
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Icon(CupertinoIcons.smiley_fill,
                                color: Colors.green, size: 20)
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            IconButton(
                                onPressed: null,
                                icon: Icon(
                                    CupertinoIcons.pencil_ellipsis_rectangle,
                                    color: Colors.green,
                                    size: 25)),
                            IconButton(
                                onPressed: null,
                                icon: Icon(CupertinoIcons.delete,
                                    color: Colors.red, size: 25)),
                          ],
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
