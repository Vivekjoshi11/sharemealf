// ignore_for_file: sort_child_properties_last

import 'dart:io';

// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
// import 'package:sharemeal/camera_screen.dart';
import 'package:sharemeal/final.dart';
import 'package:sharemeal/utils/routes.dart';

import 'camera_screen.dart';
import 'home.dart';
import 'meal.dart';
// import 'package:sharemeal/home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
          // "/": (context) => const MyHomePage(),
        Myroutes.homeRoute: (context) => const Home(),
        // Myroutes.loginRoute: (context) => const Meal(),
        Myroutes.finalScreen: (context) => const Final(),
         Myroutes.CameraScreen: (context) => const CameraScreen(),
          Myroutes.mealScreen: (context) => const Meal(),
      },
    );
    
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;
   File? imagefile;

  @override
  Widget build(BuildContext context) {
    return Material(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             const Text(
              '',
            ),
            const SizedBox(
              width: 50,
              height: 300,
            ),
            ElevatedButton
            ( 
             onPressed: () { 
              Navigator.pushNamed(context, Myroutes.homeRoute);
             },
             style:  TextButton.styleFrom (
              padding:  const EdgeInsets.all(30.0),
              backgroundColor: Colors.green,
  ),
             child: const Text("Share Your Meal!",
             style: TextStyle(fontSize: 30),
             )
             
             )
            
          ],
        ),
        // routes: {
        // "/": (context) => const MyApp(),
        // Myroutes.homeRoute: (context) => Home(),
        // Myroutes.loginRoute: (context) => const LoginPage()
      // }, 
    );
  }

  
}
