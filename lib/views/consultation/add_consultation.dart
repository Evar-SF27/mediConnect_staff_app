import 'package:app/utils/colors.dart';
import 'package:app/utils/screen.dart';
import 'package:app/views/consultation/search.dart';
import 'package:app/widgets/button.dart';
import 'package:app/widgets/input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddConsultation extends StatefulWidget {
  const AddConsultation({super.key});

  @override
  State<AddConsultation> createState() => _AddConsultationState();
}

class _AddConsultationState extends State<AddConsultation> {
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

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: ListView(
            children: [
              const SearchConsultationContainer(screenName: "Add Consultation"),
              Form(
                key: formKey,
                child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text("Basic Information",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.blueDarkColor)),
                          const Divider(),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              SizedBox(
                                  width: screenWidth(context) * 0.35,
                                  child: formInputField(
                                      controller: firstnameController,
                                      hideText: false,
                                      labelText: "First Name")),
                              SizedBox(
                                  width: screenWidth(context) * 0.35,
                                  child: formInputField(
                                      controller: lastnameController,
                                      hideText: false,
                                      labelText: "Last Name")),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              SizedBox(
                                  width: screenWidth(context) * 0.7,
                                  child: emailInputField(
                                      controller: firstnameController,
                                      hideText: false,
                                      labelText: "Email"))
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              SizedBox(
                                  width: screenWidth(context) * 0.35,
                                  child: formInputField(
                                      controller: firstnameController,
                                      hideText: false,
                                      labelText: "Age")),
                              SizedBox(
                                  width: screenWidth(context) * 0.35,
                                  child: formInputField(
                                      controller: lastnameController,
                                      hideText: false,
                                      labelText: "Gender")),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              SizedBox(
                                  width: screenWidth(context) * 0.35,
                                  child: formInputField(
                                      controller: firstnameController,
                                      hideText: false,
                                      labelText: "Height")),
                              SizedBox(
                                  width: screenWidth(context) * 0.35,
                                  child: formInputField(
                                      controller: lastnameController,
                                      hideText: false,
                                      labelText: "Weight")),
                            ],
                          ),
                          const SizedBox(height: 25),
                          const Text("Vital Signs",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.blueDarkColor)),
                          const Divider(),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              SizedBox(
                                  width: screenWidth(context) * 0.35,
                                  child: formInputField(
                                      controller: firstnameController,
                                      hideText: false,
                                      labelText: "Temperature")),
                              SizedBox(
                                  width: screenWidth(context) * 0.35,
                                  child: formInputField(
                                      controller: lastnameController,
                                      hideText: false,
                                      labelText: "Blood Pressure")),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              SizedBox(
                                  width: screenWidth(context) * 0.7,
                                  height: 200,
                                  child: textField(
                                      controller: firstnameController,
                                      labelText: "Complaints")),
                            ],
                          ),
                          Container(
                              width: 300,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: addButton(
                                  onTap: null,
                                  icon: CupertinoIcons.add_circled,
                                  text: "Create Consultation")),
                        ])),
              ),
            ],
          )),
    );
  }
}
