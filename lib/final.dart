import 'package:flutter/material.dart';

class Final extends StatelessWidget {
  const Final({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Page'),
      ),
      body: const Center(
        // SizedBox()
        child: Text(
          'GOOD JOB',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.green,
            
          ),
        ),
      ),
    );
  }
}