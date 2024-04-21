import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'messageProvider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => MessageProvider(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final messageProvider = Provider.of<MessageProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Messages'),
        ),
        body: FutureBuilder(
          future: messageProvider.fetchMessages(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text('Error: ${snapshot.error}'),
              );
            } else {
              return ListView.builder(
                itemCount: messageProvider.messages.length,
                itemBuilder: (context, index) {
                  final message = messageProvider.messages[index];
                  return ListTile(
                    title: Text(message.title),
                    subtitle: Text(message.body),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
