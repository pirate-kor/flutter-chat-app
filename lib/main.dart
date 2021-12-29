import 'package:chatapp/view/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Chat App - clon code",
      debugShowCheckedModeBanner: false,
      home: const WelcomeView(),
    );
  }
}
