import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:ngo_app/widgets/blue_button.dart';
import 'package:ngo_app/widgets/field_name.dart';
import 'package:ngo_app/widgets/navigate_drawer.dart';
import 'package:ngo_app/widgets/volunteer_field.dart';

class VolunteerScreen extends StatefulWidget {
  const VolunteerScreen({super.key});

  @override
  State<VolunteerScreen> createState() => _VolunteerScreenState();
}

class _VolunteerScreenState extends State<VolunteerScreen> {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final cityController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    phoneNumberController.dispose();
    cityController.dispose();
    super.dispose();
  }

  void onFormSubmit() {
    if (formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Your Application Form Submitted!"),
          duration: Duration(seconds: 3),
          showCloseIcon: true,
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Enter all fields!"),
          duration: Duration(seconds: 3),
          showCloseIcon: true,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Become a Volunteer",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      drawer: NavigateDrawer(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/volunteer.png',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Gap(16),
              Text(
                "Join Our Mission",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Gap(4),
              Text(
                "Help us make a difference in the lives of those in need. Your time and skills can create a lasting impact.",
                style: TextStyle(color: Color(0xFF4F8096), fontSize: 18),
              ),
              Gap(28),
              FieldName(name: "Name"),
              Gap(8),
              VolunteerField(
                hintText: "Enter  your full name",
                controller: nameController,
                action: TextInputAction.next,
                keyBoardType: TextInputType.name,
              ),
              Gap(24),
              FieldName(name: "Phone Number"),
              Gap(8),
              VolunteerField(
                hintText: "Enter  your phone number",
                controller: phoneNumberController,
                action: TextInputAction.next,
                keyBoardType: TextInputType.number,
                formatters: [FilteringTextInputFormatter.digitsOnly],
              ),
              Gap(24),
              FieldName(name: "City"),
              Gap(8),
              VolunteerField(
                hintText: "Enter  your city",
                controller: cityController,
                action: TextInputAction.done,
                keyBoardType: TextInputType.name,
                onEditingComplete: onFormSubmit,
              ),
              Gap(24),
              BlueButton(onPressed: onFormSubmit, buttonName: "Submit"),
              Gap(40),
            ],
          ),
        ),
      ),
    );
  }
}
