import 'package:chatapp/theme.dart';
import 'package:chatapp/view/sign/sign.dart';
import 'package:chatapp/view/welcome/welcome.dart';
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
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      themeMode: ThemeMode.system, 
      // home: const WelcomeView(),
      home: WelcomeView()
    );
  }
}
