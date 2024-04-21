import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:lab_3/provider_http/message.dart';

class MessageProvider extends ChangeNotifier {
  List<Message> messages = [];

  Future<void> fetchMessages() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      messages = data.map((item) => Message.fromJson(item)).toList();
    } else {
      throw Exception('Failed to fetch messages');
    }

    notifyListeners();
  }
}
