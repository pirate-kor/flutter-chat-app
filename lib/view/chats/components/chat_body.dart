import 'package:chatapp/components/fill_outline_button.dart';
import 'package:chatapp/contants/colors.dart';
import 'package:chatapp/contants/paddings.dart';
import 'package:chatapp/models/chat.dart';
import 'package:chatapp/view/chats/components/chat.dart';
import 'package:chatapp/view/messages/message.dart';
import 'package:flutter/material.dart';

class ChatBody extends StatelessWidget {
  const ChatBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(
              defaultPadding, 0, defaultPadding, defaultPadding),
          color: primaryColor,
          child: Row(
            children: [
              FillOutlineButton(
                press: () {},
                text: "최근 메시지",
              ),
              SizedBox(
                width: defaultPadding,
              ),
              FillOutlineButton(press: () {}, text: "활동상태", isFilled: false)
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: chatsData.length,
              itemBuilder: (context, index) => ChatLine(
                  chat: chatsData[index],
                  press: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MessageView())))),
        )
      ],
    );
  }
}
