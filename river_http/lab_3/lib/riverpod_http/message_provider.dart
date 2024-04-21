import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'message.dart';

final messageProvider =
    StateNotifierProvider<MessageNotifier, AsyncValue<List<Message>>>((ref) {
  return MessageNotifier();
});

class MessageNotifier extends StateNotifier<AsyncValue<List<Message>>> {
  MessageNotifier() : super(const AsyncValue.loading()) {
    fetchMessages();
  }

  Future<void> fetchMessages() async {
    try {
      final response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        final messages = data.map((item) => Message.fromJson(item)).toList();
        state = AsyncValue.data(messages);
      } else {
        throw Exception('Failed to fetch messages');
      }
    } catch (e, stackTrace) {
      state = AsyncValue.error(e, stackTrace);
    }
  }
}
