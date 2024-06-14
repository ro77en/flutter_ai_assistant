import 'package:ai_assistant/api/apis.dart';
import 'package:ai_assistant/model/message.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatController extends GetxController {
  final textC = TextEditingController();

  final list = <Message>[].obs;
  var isAskingName = true.obs;
  var userName = ''.obs;

  @override
  void onInit() {
    super.onInit();
    askForName();
  }

  void askForName() {
    list.add(Message(
        msg: 'Hello, welcome to AI Assistant Chatbot! How should i call you?',
        msgType: MessageType.bot));
  }

  Future<void> askQuestion() async {
    if (textC.text.trim().isNotEmpty) {
      if (isAskingName.value) {
        userName.value = textC.text.trim();
        list.add(Message(msg: userName.value, msgType: MessageType.user));
        list.add(Message(
            msg: 'Nice to meet you, ${userName.value}! How can i help you?',
            msgType: MessageType.bot));
        isAskingName.value = false;
      } else {
        // user
        list.add(Message(msg: textC.text, msgType: MessageType.user));
        list.add(
            Message(msg: 'Generating response...', msgType: MessageType.bot));

        final response = await APIs.talkWithGemini(textC.text);

        // ai bot
        list.removeLast();
        list.add(Message(msg: response, msgType: MessageType.bot));
      }
      textC.text = '';
    }
  }
}
