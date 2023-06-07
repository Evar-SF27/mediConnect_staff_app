import 'package:flutter/material.dart';

void showDeleteDialog(context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Delete Consultations"),
          content: Text("Are you sure you want to delete this consultation?"),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // button(onTap: null, text: "Cancel"),
                SizedBox(width: 5),
                // button(onTap: null, text: "Delete"),
              ],
            )
          ],
        );
      });
}
