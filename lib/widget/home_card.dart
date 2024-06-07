import "package:ai_assistant/helper/global.dart";
import "package:flutter/material.dart";
import "package:lottie/lottie.dart";

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue.withOpacity(.2),
      elevation: 0,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Row(
        children: [
          // lottie
          Lottie.asset('assets/lottie/ai_hand_waving.json',
              width: mq.width * .35),

          const Spacer(),

          // title
          const Text(
            'AI Chatbot',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w500, letterSpacing: .5),
          ),
          const Spacer(
            flex: 5,
          ),
        ],
      ),
    );
  }
}
