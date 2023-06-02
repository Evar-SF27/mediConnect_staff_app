import 'package:flutter/material.dart';

Container card({required imagePath}) {
  return Container(
      width: 70,
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(16),
          color: Colors.blue[50]),
      child: Image.asset(
        imagePath,
        height: 30,
      ));
}
