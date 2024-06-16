import 'package:ai_assistant/controller/chat_controller.dart';
import 'package:ai_assistant/helper/global.dart';
import 'package:ai_assistant/screen/chat_history_page.dart';
import 'package:ai_assistant/widget/message_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatbotFeature extends StatefulWidget {
  const ChatbotFeature({super.key});

  @override
  State<ChatbotFeature> createState() => _ChatbotFeatureState();
}

class _ChatbotFeatureState extends State<ChatbotFeature> {
  final ChatController _c = Get.put(ChatController());

  void _handleCloseChat() async {
    bool? saveChat = await showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('Save Chat'),
              content:
                  const Text('Do you want to save this chat before closing?'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: const Text('No'),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: const Text('Yes'),
                ),
              ],
            ));

    if (saveChat ?? false) {
      await _c.saveChatHistory();
    }

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat with AI Assistant'),
        actions: [
          IconButton(
            icon: const Icon(Icons.history),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ChatHistoryPage()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: _handleCloseChat,
          ),
        ],
      ),

      // send msg field & btn
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          children: [
            // text input field
            Expanded(
              child: TextFormField(
                controller: _c.textC,
                onTapOutside: (e) => FocusScope.of(context).unfocus(),
                decoration: const InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  isDense: true,
                  hintText: 'Ask me anything you want...',
                  hintStyle: TextStyle(fontSize: 14),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                ),
              ),
            ),

            // for adding some space
            const SizedBox(
              width: 8,
            ),

            // send button
            CircleAvatar(
              radius: 24,
              backgroundColor: Colors.blue,
              child: IconButton(
                onPressed: _c.askQuestion,
                icon: const Icon(
                  Icons.rocket_launch_rounded,
                  color: Colors.white,
                  size: 28,
                ),
              ),
            )
          ],
        ),
      ),

      // body
      body: Obx(
        () => ListView(
          // physics: const BouncingScrollPhysics(),
          padding:
              EdgeInsets.only(top: mq.height * .02, bottom: mq.height * .01),
          children: _c.list.map((e) => MessageCard(message: e)).toList(),
        ),
      ),
    );
  }
}
