import 'package:flutter/material.dart';
import 'package:social_media/core/constant/constant.dart';

class Signinbutton extends StatelessWidget {
  const Signinbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: ElevatedButton.icon(
          onPressed: () {},
          icon: Image.asset(
            Constants.googlePath,
            width: 30,
          ),
          label: const Text(
            "Continue with Google",
            style: TextStyle(fontSize: 17),
          ),
          style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 50))),
    );
  }
}
