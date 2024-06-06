import 'package:ai_assistant/helper/global.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // animation
          Lottie.asset('assets/lottie/ai_ask_me.json', height: mq.height * .6),

          // title
          const Text(
            'Ask me Anything',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w900, letterSpacing: .5),
          ),

          // add some spacing
          SizedBox(
            height: mq.height * .015,
          ),

          // subtitle
          SizedBox(
            width: mq.width * .7,
            child: const Text(
              'I can be your Best Friend & You can ask me anything. I will help you!',
              style: TextStyle(
                  fontSize: 13.5, letterSpacing: .5, color: Colors.black54),
              textAlign: TextAlign.center,
            ),
          ),

          const Spacer(),

          // dots
          Wrap(
              spacing: 10,
              children: List.generate(
                  2,
                  (i) => Container(
                        width: 10,
                        height: 8,
                        decoration: const BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                      ))),

          const Spacer(),

          // button
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                elevation: 0,
                textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                minimumSize: Size(mq.width * .3, 50),
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white),
            onPressed: () {},
            child: const Text(
              'Next',
            ),
          ),

          const Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
