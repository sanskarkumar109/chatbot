import 'package:flutter/foundation.dart';
import 'gemini_service.dart';

class ChatProvider with ChangeNotifier {
  List<Map<String, String>> messages = [];

  final gemini = GeminiService();

  Future<void> sendMessage(String msg) async {
    messages.add({"role": "user", "text": msg});
    notifyListeners();

    final response = await gemini.sendMessage(msg);
    messages.add({"role": "bot", "text": response});
    notifyListeners();
  }
}
