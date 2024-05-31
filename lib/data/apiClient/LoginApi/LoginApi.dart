import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../presentation/home_screen/home_screen.dart';
import '../../../tst.dart';

 void login(String email,String password,BuildContext context) async {

  final response = await http.post(
    Uri.parse('http://axnoldigitalsolutions.in/Training/api/login'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'email': email,
      'password': password,
    }),
  );

  if (response.statusCode == 200) {
    final Map<String, dynamic> responseData = jsonDecode(response.body);
   Get.to(HomeScreen(responseData_val: responseData,));
  } else {
    // Handle error
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Login failed!')),
    );
  }
}