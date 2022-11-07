import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dialogs/dialogs/basic_alert_dialog.dart';
import 'package:flutter_dialogs/dialogs/confirmation_alert_dialog.dart';
import 'package:flutter_dialogs/dialogs/custom_dialog.dart';
import 'package:flutter_dialogs/dialogs/full_screen_dialog.dart';
import 'package:flutter_dialogs/dialogs/text_field_dialog.dart';

import 'dialogs/select_option_alert_dialog.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Alert Dialog'),
                const SizedBox(height: 20),
                MaterialButton(
                  color: Colors.blueGrey,
                  onPressed: () {
                    showBasicAlertDialog(context);
                  },
                  child: const Center(
                      child: Text(
                    'Basic Alert Dialog Box',
                    style: TextStyle(color: Colors.white),
                  )),
                ),
                const SizedBox(height: 20),
                MaterialButton(
                  color: Colors.blueGrey,
                  onPressed: () {
                    showConfirmationAlertDialog(context);
                  },
                  child: const Center(
                      child: Text(
                    'Confirmation Alert Dialog Box',
                    style: TextStyle(color: Colors.white),
                  )),
                ),
                const SizedBox(height: 20),
                MaterialButton(
                  color: Colors.blueGrey,
                  onPressed: () async {
                    final Product? prodName =
                        await showSelectOptionAlertDialog(context);
                    if (kDebugMode) {
                      print("Selected Product is $prodName");
                    }
                  },
                  child: const Center(
                      child: Text(
                    'Select Option Alert Dialog Box',
                    style: TextStyle(color: Colors.white),
                  )),
                ),
                const SizedBox(height: 20),
                MaterialButton(
                  color: Colors.blueGrey,
                  onPressed: () {
                    showTextFieldAlertDialog(context);
                  },
                  child: const Center(
                      child: Text(
                    'TextField Alert Dialog Box',
                    style: TextStyle(color: Colors.white),
                  )),
                ),
                const SizedBox(height: 40),
                const Text('Custom Dialog'),
                const SizedBox(height: 20),
                MaterialButton(
                  color: Colors.blueGrey,
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return const CustomDialogBox(
                            title: "Custom Dialog Demo",
                            descriptions:
                                "Hii all this is a custom dialog in flutter and  you will be use in your flutter applications",
                            text: "Yes",
                          );
                        });
                  },
                  child: const Center(
                      child: Text(
                    'Custom Dialog Box',
                    style: TextStyle(color: Colors.white),
                  )),
                ),
                const SizedBox(height: 40),
                const Text('Full Screen Dialog'),
                const SizedBox(height: 20),
                MaterialButton(
                  color: Colors.blueGrey,
                  onPressed: () {
                    showFullScreenDialog(context);
                  },
                  child: const Center(
                      child: Text(
                    'Full screen Dialog Box',
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
