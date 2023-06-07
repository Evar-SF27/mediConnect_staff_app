import 'package:app/utils/colors.dart';
import 'package:app/utils/screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void showViewDialog(context) {
  showBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 5),
                        child: Row(children: [
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(CupertinoIcons.left_chevron,
                                  color: AppColors.blueDarkColor)),
                          const Text("Consultations",
                              style: TextStyle(
                                  color: AppColors.blueDarkColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500))
                        ])),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: Text("Patient's Information",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: AppColors.blueDarkColor)),
                    ),
                    const Divider(),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                            width: screenWidth(context) * 0.45,
                            child: const Row(
                              children: [
                                Text("First Name:",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(width: 5),
                                Text("Patient", style: TextStyle(fontSize: 18))
                              ],
                            )),
                        SizedBox(
                            width: screenWidth(context) * 0.45,
                            child: const Row(
                              children: [
                                Text("Last Name:",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(width: 5),
                                Text("One", style: TextStyle(fontSize: 18))
                              ],
                            )),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                            width: screenWidth(context) * 0.9,
                            child: const Row(
                              children: [
                                Text("Email Address:",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(width: 5),
                                Text("patientone@gmail.com",
                                    style: TextStyle(fontSize: 18))
                              ],
                            )),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                            width: screenWidth(context) * 0.45,
                            child: const Row(
                              children: [
                                Text("Age:",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(width: 5),
                                Text("21", style: TextStyle(fontSize: 18))
                              ],
                            )),
                        SizedBox(
                            width: screenWidth(context) * 0.45,
                            child: const Row(
                              children: [
                                Text("Gender:",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(width: 5),
                                Text("Male", style: TextStyle(fontSize: 18))
                              ],
                            )),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                            width: screenWidth(context) * 0.45,
                            child: const Row(
                              children: [
                                Text("Height:",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(width: 5),
                                Text("176cm", style: TextStyle(fontSize: 18))
                              ],
                            )),
                        SizedBox(
                            width: screenWidth(context) * 0.45,
                            child: const Row(
                              children: [
                                Text("Weight:",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(width: 5),
                                Text("79kg", style: TextStyle(fontSize: 18))
                              ],
                            )),
                      ],
                    ),
                    const SizedBox(height: 30),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: Text("Doctor's Information",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: AppColors.blueDarkColor)),
                    ),
                    const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                            width: screenWidth(context) * 0.45,
                            child: const Row(
                              children: [
                                Text("First Name:",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(width: 5),
                                Text("Patient", style: TextStyle(fontSize: 18))
                              ],
                            )),
                        SizedBox(
                            width: screenWidth(context) * 0.45,
                            child: const Row(
                              children: [
                                Text("Last Name:",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(width: 5),
                                Text("One", style: TextStyle(fontSize: 18))
                              ],
                            )),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                            width: screenWidth(context) * 0.9,
                            child: const Row(
                              children: [
                                Text("Email Address:",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(width: 5),
                                Text("patientone@gmail.com",
                                    style: TextStyle(fontSize: 18))
                              ],
                            )),
                      ],
                    ),
                    const SizedBox(height: 30),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: Text("Vital Signs",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: AppColors.blueDarkColor)),
                    ),
                    const Divider(),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                            width: screenWidth(context) * 0.45,
                            child: const Row(
                              children: [
                                Text("Blood Pressure:",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(width: 5),
                                Text("110/80mmHg",
                                    style: TextStyle(fontSize: 18))
                              ],
                            )),
                        SizedBox(
                            width: screenWidth(context) * 0.45,
                            child: const Row(
                              children: [
                                Text("Temperature:",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(width: 5),
                                Text("38 deg Celsius",
                                    style: TextStyle(fontSize: 18))
                              ],
                            )),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                      SizedBox(
                          width: screenWidth(context) * 0.9,
                          child: const Wrap(children: [
                            Text("Complaints:",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                            SizedBox(width: 5),
                            Text("Severe headache, fever and vomitting",
                                style: TextStyle(fontSize: 18))
                          ]))
                    ]),
                    const SizedBox(height: 15),
                  ])),
        );
      });
}
