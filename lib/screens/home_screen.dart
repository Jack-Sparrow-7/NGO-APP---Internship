import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ngo_app/widgets/blue_button.dart';
import 'package:ngo_app/widgets/navigate_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Hope Haven",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),

      drawer: NavigateDrawer(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/ngo.png',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Gap(36),
            Text(
              "Welcome to Helping\nHands",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Gap(16),
            Text(
              "Hope Haven is dedicated to providing support and resources to underserved communities. Our mission is to empower individuals and families through education, healthcare, and sustainable development programs. Join us in making a difference.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            Gap(24),
            BlueButton(
              buttonName: "Become a Volunteer",
              onPressed: () => Navigator.pushNamedAndRemoveUntil(
                context,
                '/volunteer',
                (route) => false,
              ),
            ),
            Gap(48),
          ],
        ),
      ),
    );
  }
}
