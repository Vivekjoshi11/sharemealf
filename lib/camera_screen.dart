// ignore_for_file: avoid_print, library_private_types_in_public_api

// import 'dart:io';
import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:sharemeal/utils/routes.dart';
// import 'package:sharemeal/utils/routes.dart';
// import 'package:path_provider/path_provider.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key});

  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  // late CameraController _controller;
  // late Future<void> _initializeControllerFuture;
  late List<CameraDescription> cameras;
  late CameraController cameraController;
  

  

  @override
  void initState() {
    startCamera(0);
    super.initState();
  }

  void startCamera(int direction ) async{
    cameras = await availableCameras();

    cameraController = CameraController(cameras[direction], ResolutionPreset.high,
    enableAudio: false,);
    await cameraController.initialize().then((value)
    {
      if(!mounted){
        return;
      }
      setState(() {}); //to refress widget
    }).catchError((e){
      print(e);
    });
  }

  @override
  void dispose() {
    cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
      //  int direction;
       if(cameraController.value.isInitialized){
        return  Scaffold(
           body: Stack(
            
            children: [
              CameraPreview(cameraController),
              // GestureDetector(
              //   onTap: () {
                  
              //      Navigator.pushNamed(context, Myroutes.mealScreen);
              //   },
              //   child: button(Icons.done_outline_rounded, Alignment.bottomRight)
              // ),
               GestureDetector(
                onTap: () {
                  cameraController.takePicture().then((XFile? file){
                    
                    if(mounted){
                      const AsyncSnapshot.waiting();
                      if(file != null){
                        print("picture saved to ${file.path}");
                        
                   Navigator.pushNamed(context, Myroutes.mealScreen);
            
                        // button(Icons.done, Alignment.bottomCenter);
                        SizedBox(
                               child: Image.file(
                                  file as File,
                                   width: 300,
                                   height: 300,
                                   ),
                                   );
                      }
                      
                    }


                  });
                 
                },
                child: button(Icons.camera_alt_outlined, Alignment.bottomCenter)
                // child: button(Icons.camera_alt_outlined, Alignment.bottomCenter)
              ),  
              // ElevatedButton(onPressed: (){

              //   Navigator.pushNamed(context, Myroutes.mealScreen);
              // }, child: const Text("Done"),)
            ],
           ),
        );
       }
       else{
        return const SizedBox();
       }
  }


    Widget button(IconData icon, Alignment alignment){
      return Align(
                alignment:alignment,
                
                child: Container(margin: const EdgeInsets.only(bottom: 20,
                left:20,
                ),
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(2, 2),
                      blurRadius: 10,
                    )
                  ]
                ),
                child: const Center(
                  child: Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.black54,
                  ),
                ),
                ),
                );

                
    }


    
  }

