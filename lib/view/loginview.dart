
import 'package:flutter/material.dart';
import 'package:untitled3/view/widgets/buttonglobal.dart';
import 'package:untitled3/view/widgets/sociallogin.dart';
import 'package:untitled3/view/widgets/textformglobal.dart';

import '../utils/globalcolors.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),

                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "LOGO",
                    style: TextStyle(
                      color: GlobalColors.mainColor,
                      fontSize: 36,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                Text(
                  "Login to your Account",
                  style: TextStyle(
                      color: GlobalColors.textColor,
                      fontSize: 18,
                  ),
                ),
                const SizedBox(height: 10),
                TextFormGlobal(controller: emailController,text: 'Email',obscure: false,textInputType: TextInputType.emailAddress),
                const SizedBox(height: 10),
                TextFormGlobal(controller: passwordController,text: 'Password',obscure: true,textInputType: TextInputType.visiblePassword),
                const SizedBox(height: 10),
                ButtonGlobal(),
                const SizedBox(height: 30),
                SocialLogin(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Text("Don't have an Account?"),
            InkWell(
              child:Text(
                'Sign Up',style: TextStyle(
                color: GlobalColors.mainColor,
              ),
              ) ,
            )
          ],
        ),
      ),
    );
  }
}
