import 'package:ai_assistant/helper/global.dart';
import 'package:ai_assistant/screen/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    // Initializing device size
    mq = MediaQuery.sizeOf(context);

    return Scaffold(
      body: Center(
        child: Card(
          color: const Color.fromARGB(255, 173, 214, 248),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Padding(
            padding: EdgeInsets.all(mq.width * .05),
            child: Image.asset(
              'assets/images/logo-chatbot.png',
              width: mq.width * .45,
            ),
          ),
        ),
      ),
    );
  }
}
