import 'package:flutter/material.dart';

class ResumeSubCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title:  Text('Resume Submission'),
      ),
      body: Container(
        child: Center(child: Text('Welcome to Resume Submission')),
      ),
    );
  }
}