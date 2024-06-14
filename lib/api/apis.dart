import 'package:ai_assistant/helper/api_key.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class APIs {
  static Future<void> talkWithGemini() async {
    final model = GenerativeModel(model: 'gemini-1.0-pro', apiKey: apiKey);

    final msg = 'Hello';

    final content = Content.text(msg);

    final response = await model.generateContent([content]);

    print('response from gemini ai: ${response.text}');
  }
}
