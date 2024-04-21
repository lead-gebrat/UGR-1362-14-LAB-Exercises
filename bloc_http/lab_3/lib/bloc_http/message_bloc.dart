import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'message.dart';

// Define the events
abstract class MessageEvent {}

class FetchMessages extends MessageEvent {}

// Define the state
abstract class MessageState {}

class MessageInitial extends MessageState {}

class MessageLoaded extends MessageState {
  final List<Message> messages;

  MessageLoaded(this.messages);
}

class MessageError extends MessageState {
  final String errorMessage;

  MessageError(this.errorMessage);
}

// Define the BLoC class
class MessageBloc extends Bloc<MessageEvent, MessageState> {
  MessageBloc() : super(MessageInitial());

  @override
  Stream<MessageState> mapEventToState(MessageEvent event) async* {
    if (event is FetchMessages) {
      yield MessageInitial();

      try {
        final response = await http
            .get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

        if (response.statusCode == 200) {
          final List<dynamic> data = json.decode(response.body);
          final messages = data.map((item) => Message.fromJson(item)).toList();
          yield MessageLoaded(messages);
        } else {
          throw Exception('Failed to fetch messages');
        }
      } catch (e) {
        yield MessageError('An error occurred while fetching messages');
      }
    }
  }
}
