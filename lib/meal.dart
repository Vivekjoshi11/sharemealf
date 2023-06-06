// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:sharemeal/utils/routes.dart';
// import 'camera_screen.dart';

class Meal extends StatefulWidget {
  const Meal({super.key});

  @override
  State<Meal> createState() => _MealState();
}

class _MealState extends State<Meal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Upload'),
      ),
      body:   Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("lib/assets/images/baby1.png",
            fit: BoxFit.cover,
            width: 200,  // Set the desired width
             height: 200,),
          const SizedBox(height: 20),
            const CircleAvatar(
              child: Text("Image saved"),
              
              // String filepath = "$file.path";
              radius: 100,
              
              backgroundColor: Colors.black,
              // backgroundImage: Image.asset("$file.path"),
            ),
            const SizedBox(height: 20),
             const SizedBox(
              child: Text("Captured Meal",
              style: TextStyle(fontSize: 35),),
              
            ),
            Positioned(
  // camerabuttonerS (1:63)
              left:  146,
              top:  536,
                child:  
                Container(
                  padding:  const EdgeInsets.fromLTRB(14, 19, 14, 19),
                  width:  64,
                  height:  64,
                  decoration:  BoxDecoration (
                    color:  const Color(0xff3e8b3a),
                    borderRadius:  BorderRadius.circular(32),
                    boxShadow:  const [
                      BoxShadow(
                        color:  Color(0x4c000000),
                        offset:  Offset(0, 4),
                        blurRadius:  2,
                      ),
                    ],
                  ),
                  child:  
                Center(
                  // vectorJRC (1:65)
                  child:  
                SizedBox(
                  width:  36,
                  height:  26,
                  child:  
                TextButton(
                  onPressed:  () {
                    Navigator.pushNamed(context, Myroutes.finalScreen);
                  },
                  style:  TextButton.styleFrom (
                    padding:  EdgeInsets.zero,
                  ),
                  
                  child:  
                Image.asset("lib/assets/images/done.png",
                            fit: BoxFit.cover,
                            width: 200,  // Set the desired width
                            height: 50,),
                            ),
                          ),
                        ),
                      ),

    ),


   ],
   ),
  ),
      
);
  }
}