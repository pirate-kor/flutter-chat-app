import 'package:chatapp/contants/colors.dart';
import 'package:chatapp/contants/paddings.dart';
import 'package:chatapp/models/message.dart';
import 'package:chatapp/view/messages/components/audio_message.dart';
import 'package:chatapp/view/messages/components/text_message.dart';
import 'package:chatapp/view/messages/components/video_message.dart';
import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  const Message({Key? key, required this.message}) : super(key: key);

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    Widget messageContaint(ChatMessage message) {
      switch (message.messageType) {
        case ChatMessageType.text:
          return TextMessage(message: message);
          // return AudioMessage(message: message);
        case ChatMessageType.audio:
          return AudioMessage(message: message);
        case ChatMessageType.video:
          return const VideoMessage();
        default:
          return const SizedBox();
      }
    }

    return Padding(
      padding: EdgeInsets.only(top: defaultPadding),
      child: Row(
        mainAxisAlignment: 
            message.isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!message.isSender) ...[
            CircleAvatar(
              radius: 12,
              backgroundImage: AssetImage("assets/images/user_2.png"),
            ),
            SizedBox(
              width: defaultPadding / 2,
            )
          ],
          messageContaint(message),
          if (message.isSender) MessageStatusDot(status: message.messageStatus)
        ],
      ),
    );
  }
}

class MessageStatusDot extends StatelessWidget {
  const MessageStatusDot({Key? key, this.status}) : super(key: key);

  final MessageStatus? status;

  @override
  Widget build(BuildContext context) {
    Color dotColor(MessageStatus status) {
      switch (status) {
        case MessageStatus.not_sent:
          return errorColor;
        case MessageStatus.not_view:
          return Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.1);
        case MessageStatus.viewed:
          return primaryColor;
        default:
          return Colors.transparent;
      }
    }

    return Container(
        margin: EdgeInsets.only(left: defaultPadding / 2),
        height: 12,
        width: 12,
        decoration:
            BoxDecoration(color: dotColor(status!), shape: BoxShape.circle),
        child: Icon(
          status == MessageStatus.not_sent ? Icons.close : Icons.done,
          size: 8,
          color: Theme.of(context).scaffoldBackgroundColor,
        ));
  }
}
