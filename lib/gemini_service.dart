import 'dart:convert';
import 'package:http/http.dart' as http;

class GeminiService {
  final String apiKey = 'AIzaSyBIDRZDPQJF3wjTprSf4rbFqpCHOicIuJ8'; // Replace this

  Future<String> sendMessage(String message) async {
    final uri = Uri.parse('https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key=$apiKey');

    final response = await http.post(
      uri,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        "contents": [
          {
            "parts": [
              {"text": message}
            ]
          }
        ]
      }),
    );

    final data = jsonDecode(response.body);
    try {
      return data['candidates'][0]['content']['parts'][0]['text'];
    } catch (e) {
      return "Something went wrong. Try again!";
    }
  }
}
