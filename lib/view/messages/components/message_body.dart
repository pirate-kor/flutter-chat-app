import 'package:chatapp/contants/paddings.dart';
import 'package:chatapp/models/message.dart';
import 'package:chatapp/view/messages/components/chat_input_field.dart';
import 'package:chatapp/view/messages/components/message.dart';
import 'package:flutter/material.dart';

class MessageBody extends StatelessWidget {
  const MessageBody({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: ListView.builder(
          itemCount: demeChatMessages.length,
          itemBuilder: (context, index) => 
          Message(message: demeChatMessages[index],)))),
          ChatInputField()
      ],
    );
  }
}