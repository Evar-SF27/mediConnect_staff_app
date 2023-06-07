import 'package:app/utils/colors.dart';
import 'package:app/utils/screen.dart';
import 'package:app/widgets/button.dart';
import 'package:app/widgets/input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void showUpdateDialog(context) {
  final formKey = GlobalKey<FormState>();
  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final emailController = TextEditingController();
  final ageController = TextEditingController();
  final genderController = TextEditingController();
  final heightController = TextEditingController();
  final weightController = TextEditingController();
  final tempController = TextEditingController();
  final pressureController = TextEditingController();
  final complaintsController = TextEditingController();

  @override
  void dispose() {
    firstnameController.dispose();
    lastnameController.dispose();
    emailController.dispose();
    ageController.dispose();
    genderController.dispose();
    heightController.dispose();
    weightController.dispose();
    tempController.dispose();
    pressureController.dispose();
    complaintsController.dispose();

    // super.dispose();
  }

  showBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
                            const Text("Consultation Screen",
                                style: TextStyle(
                                    color: AppColors.blueDarkColor,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500))
                          ])),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        child: Text("Update Information",
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
                              child: formInputField(
                                  controller: firstnameController,
                                  hideText: false,
                                  labelText: "First Name")),
                          SizedBox(
                              width: screenWidth(context) * 0.45,
                              child: formInputField(
                                  controller: lastnameController,
                                  hideText: false,
                                  labelText: "Last Name")),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                              width: screenWidth(context) * 0.9,
                              child: emailInputField(
                                  controller: firstnameController,
                                  hideText: false,
                                  labelText: "Email"))
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                              width: screenWidth(context) * 0.45,
                              child: formInputField(
                                  controller: firstnameController,
                                  hideText: false,
                                  labelText: "Age")),
                          SizedBox(
                              width: screenWidth(context) * 0.45,
                              child: formInputField(
                                  controller: lastnameController,
                                  hideText: false,
                                  labelText: "Gender")),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                              width: screenWidth(context) * 0.45,
                              child: formInputField(
                                  controller: firstnameController,
                                  hideText: false,
                                  labelText: "Height")),
                          SizedBox(
                              width: screenWidth(context) * 0.45,
                              child: formInputField(
                                  controller: lastnameController,
                                  hideText: false,
                                  labelText: "Weight")),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                              width: screenWidth(context) * 0.45,
                              child: formInputField(
                                  controller: firstnameController,
                                  hideText: false,
                                  labelText: "Temperature")),
                          SizedBox(
                              width: screenWidth(context) * 0.45,
                              child: formInputField(
                                  controller: lastnameController,
                                  hideText: false,
                                  labelText: "Blood Pressure")),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                              width: screenWidth(context) * 0.9,
                              height: 200,
                              child: textField(
                                  controller: firstnameController,
                                  labelText: "Complaints")),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                              width: 200,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: addButton(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  icon: CupertinoIcons.delete,
                                  text: "Cancel")),
                          Container(
                              width: 200,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: addButton(
                                  onTap: null,
                                  icon: CupertinoIcons.pencil,
                                  text: "Update")),
                        ],
                      )
                    ])),
          ),
        );
      });
}
