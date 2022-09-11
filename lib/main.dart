import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mama_bus_dise/screens/homepage.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}