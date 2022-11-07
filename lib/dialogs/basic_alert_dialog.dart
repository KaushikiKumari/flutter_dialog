import 'package:flutter/material.dart';

showBasicAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = MaterialButton(
    color: Colors.green.shade900,
    child: const Text(
      "OK",
      style: TextStyle(color: Colors.white),
    ),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: const Text("Basic Alert Title"),
    content: const Text("This is an basic alert message."),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
