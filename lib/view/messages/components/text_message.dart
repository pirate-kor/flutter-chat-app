import 'package:chatapp/contants/colors.dart';
import 'package:chatapp/contants/paddings.dart';
import 'package:chatapp/models/message.dart';
import 'package:flutter/material.dart';

class TextMessage extends StatelessWidget {
  const TextMessage({Key? key, this.message}) : super(key: key);

  final ChatMessage? message;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width * 0.5,
      color: MediaQuery.of(context).platformBrightness == Brightness.dark
          ? Colors.white
          : Colors.black,
      padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding * 0.75, vertical: defaultPadding / 2),
      decoration: BoxDecoration(
          color: primaryColor.withOpacity(message!.isSender ? 1 : 0.1),
          borderRadius: BorderRadius.circular(30)),
      child: Text(
        // message!.text,
        "test",
        style: TextStyle(
            color: message!.isSender
                ? Colors.white
                : Theme.of(context).textTheme.bodyText1!.color),
      ),
    );
  }
}
