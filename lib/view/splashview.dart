import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/globalcolors.dart';
import 'loginview.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Get.to( LoginView());
    });
    return Scaffold(
      backgroundColor: GlobalColors.mainColor,
      body: const Center(
        child: Text(
          "Logo",
          style: TextStyle(
              color: Colors.white,
              fontSize: 36,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
