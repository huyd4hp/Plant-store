// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class titlewithmorebtn extends StatelessWidget {
  const titlewithmorebtn({
    super.key,
    required this.title,
    required this.onPress,
  });
  final String title;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Row(
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                decorationColor: primaryColor.withOpacity(0.5),
                decorationThickness: defaultPadding / 6),
          ),
          const Spacer(),
          SizedBox(
            height: 30,
            child: ElevatedButton(
              onPressed: onPress,
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
              ),
              child: const Text(
                "More",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
