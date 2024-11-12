import 'package:flutter/material.dart';
import 'package:technical_interview/constants/color.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [AppColors.darkBlue, AppColors.darkGray],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft),
        ),
        child:  Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Login",
                style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10,),
              Text(
                "Please enter your valid phone number",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "We will send you a 4-digit code to verify",
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 20,),
              
              const SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
