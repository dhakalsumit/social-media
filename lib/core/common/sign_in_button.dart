import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_media/core/constant/constant.dart';
import 'package:social_media/features/auth/controller/auth_controller.dart';

class Signinbutton extends ConsumerWidget {
  const Signinbutton({super.key});

  void signInWithGoogle(WidgetRef ref) {
    ref.read(authControllerProvider).signInWithgoogle();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: ElevatedButton.icon(
          onPressed: () {
            signInWithGoogle(ref);
          },
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
