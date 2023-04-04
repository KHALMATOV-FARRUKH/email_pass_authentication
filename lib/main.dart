import 'package:email_pass_authentication/home.dart';
import 'package:email_pass_authentication/my_first.dart';
import 'package:email_pass_authentication/my_login.dart';
import 'package:email_pass_authentication/my_register.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => const MyFirst(),
      'register': (context) => const MyRegister(),
      'login': (context) => const MyLogin(),
      'home': (context) => const MyHome(),
    },
  ));
}
