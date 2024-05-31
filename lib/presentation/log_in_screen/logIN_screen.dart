import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/presentation/log_in_screen/controller/Log_IN_controller.dart';

import '../../data/apiClient/LoginApi/LoginApi.dart';

class LoginScreen extends StatelessWidget {
  final LogInController logInController = Get.put(LogInController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/SHREE IRA EDUCATION.png",
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 18.0, vertical: 14),
                  child: TextField(
                    controller: logInController.emailController,
                    decoration: InputDecoration(filled: true,
                        labelText: 'Email address',
                        border: OutlineInputBorder(borderSide: BorderSide())),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 18.0, vertical: 14),
                  child: TextField(
                    controller: logInController.passwordController,
                    decoration: InputDecoration(filled: true,
                        labelText: 'Password',
                        border: OutlineInputBorder(borderSide: BorderSide()),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'Forgot?',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.red),
                          ),
                        )),
                    obscureText: true,
                  ),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(350, 45),
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3))),
                  onPressed: () {
                    login(logInController.emailController.text,
                        logInController.passwordController.text, context);
                  },
                  child: Text(
                    'Sign in',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 10,
              left: 100,
              child: RichText(
                  text: TextSpan(
                      text: 'Not registered yet? ',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                      children: [
                    TextSpan(
                        text: 'Sign up now',
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold))
                  ])),
            )
          ],
        ),
      ),
    );
  }
}
