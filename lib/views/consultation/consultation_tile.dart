import 'package:app/utils/colors.dart';
import 'package:app/utils/responsive.dart';
import 'package:app/utils/screen.dart';
import 'package:app/views/consultation/delete_dialog.dart';
import 'package:app/views/consultation/update_dialog.dart';
import 'package:app/views/consultation/view_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConsultationTile extends StatefulWidget {
  const ConsultationTile({super.key});

  @override
  State<ConsultationTile> createState() => _ConsultationTileState();
}

class _ConsultationTileState extends State<ConsultationTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 5),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColors.greyColor)),
      ),
      width: ResponsiveWidget.isMediumScreen(context)
          ? screenWidth(context) * 0.825
          : screenWidth(context) * 0.7,
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
            width: ResponsiveWidget.isLargeScreen(context)
                ? screenWidth(context) * 0.46
                : screenWidth(context) * 0.53,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
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
                    const Column(
                      children: [
                        Text("Dr. Doctor",
                            style: TextStyle(
                                color: AppColors.greyColor, fontSize: 14)),
                        Text("doctor@gmail.com",
                            style: TextStyle(
                                color: AppColors.greyColor, fontSize: 14)),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(ResponsiveWidget.isLargeScreen(context)
                                ? "Healthy"
                                : ""),
                            const SizedBox(width: 5),
                            const Icon(CupertinoIcons.smiley_fill,
                                color: Colors.green, size: 20)
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Row(children: [
                              IconButton(
                                  onPressed: () => showViewDialog(context),
                                  icon: const Icon(CupertinoIcons.eye,
                                      color: AppColors.blueDarkColor,
                                      size: 20)),
                              Text(ResponsiveWidget.isLargeScreen(context)
                                  ? "View"
                                  : "")
                            ])
                          ],
                        ),
                        const SizedBox(width: 5),
                        Column(
                          children: [
                            Row(children: [
                              IconButton(
                                  onPressed: () => showUpdateDialog(context),
                                  icon: const Icon(
                                      CupertinoIcons.pencil_ellipsis_rectangle,
                                      color: AppColors.blueDarkColor,
                                      size: 20)),
                              Text(ResponsiveWidget.isLargeScreen(context)
                                  ? "Edit"
                                  : "")
                            ])
                          ],
                        ),
                        const SizedBox(width: 5),
                        Column(
                          children: [
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () => showDeleteDialog(context),
                                    icon: const Icon(CupertinoIcons.delete,
                                        color: Colors.red, size: 20)),
                                Text(ResponsiveWidget.isLargeScreen(context)
                                    ? "Delete"
                                    : "")
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
