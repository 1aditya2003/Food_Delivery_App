import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:home/aditya/log.dart';
import 'package:home/homepage.dart';
import 'package:firebase_core/firebase_core.dart';
void main()async {
     WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyCfT8Nv_Q2K38FQi8uRzFXXuYCEvq9uh_g",
          appId: "1:955505512055:android:5b513b4e04879b47a38072",
          messagingSenderId: "955505512055",
          projectId: "group3-b4247",));
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    
    return  MaterialApp(
      theme:ThemeData.dark(),
      home: Login(),
    );
  }
}
