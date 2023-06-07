import 'package:app/utils/colors.dart';
import 'package:flutter/material.dart';

GestureDetector button({required onTap, required String text}) {
  return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
            color: AppColors.lightColor,
            borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
      ));
}

Align addButton(
    {required onTap, required IconData icon, required String text}) {
  return Align(
      alignment: Alignment.bottomRight,
      child: GestureDetector(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            margin: const EdgeInsets.symmetric(vertical: 25),
            decoration: BoxDecoration(
                color: AppColors.lightColor,
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              children: [
                Icon(icon, color: Colors.white, size: 28),
                const SizedBox(width: 5),
                Text(
                  text,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                )
              ],
            ),
          )));
}

GestureDetector secondaryButton({required onTap, required String text}) {
  return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ),
      ));
}
