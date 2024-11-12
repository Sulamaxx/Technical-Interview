import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';
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
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Login",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Please enter your valid phone number",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "We will send you a 4-digit code to verify",
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 40,
              ),
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.flag,color: Colors.white),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "(+1)",
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(Icons.arrow_drop_down,color: Colors.white),
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                          width: 1,
                          height: 20,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                      ],
                    ),
                  ),
                  hintText: '331 623 8413',
                  hintStyle: TextStyle(color: Colors.white),
                  border: GradientOutlineInputBorder(
                    gradient: LinearGradient(
                        colors: [AppColors.pink, AppColors.purple]),
                    width: 2,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  focusedBorder: GradientUnderlineInputBorder(
                      gradient: LinearGradient(
                          colors: [AppColors.pink, AppColors.purple]),
                      width: 2),
                  // label: ,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
