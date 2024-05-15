import 'package:flutter/material.dart';
// import 'package:uyishi/pages/login_pages.dart';
import 'package:uyishi/pages/ongboarding_pages.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: Text('Bosh sahifa'),
          ),
      body: Center(
        child: OnBoardingPage(),
      ),
    );
  }
}