import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:technical_interview/constants/color.dart';
import 'package:technical_interview/screens/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ),
      );
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

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
        child: Center(
          child: SizedBox(
            width: 150,
            height: 150,
            child: Image.asset('assets/images/logo.png', fit: BoxFit.contain),
          ),
        ),
      ),
    );
  }
}
