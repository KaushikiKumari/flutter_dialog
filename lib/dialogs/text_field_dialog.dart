import 'package:flutter/material.dart';

TextEditingController _textFieldController = TextEditingController();

showTextFieldAlertDialog(BuildContext context) async {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('TextField AlertDemo'),
          content: TextField(
            controller: _textFieldController,
            decoration: const InputDecoration(hintText: "TextField in Dialog"),
          ),
          actions: <Widget>[
            MaterialButton(
              color: Colors.teal,
              child: const Text('SUBMIT'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      });
}
