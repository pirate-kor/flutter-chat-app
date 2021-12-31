import 'package:chatapp/contants/colors.dart';
import 'package:chatapp/contants/paddings.dart';
import 'package:chatapp/models/message.dart';
import 'package:flutter/material.dart';

class AudioMessage extends StatelessWidget {
  const AudioMessage({Key? key, this.message}) : super(key: key);

  final ChatMessage? message;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.55,
      padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding * 0.75, vertical: defaultPadding / 2.5),
      decoration: BoxDecoration(
          color: primaryColor.withOpacity(message!.isSender ? 1 : 0.1),
          borderRadius: BorderRadius.circular(30)),
      child: Row(
        children: [
          Icon(
            Icons.play_arrow,
            color: message!.isSender ? Colors.white : primaryColor,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 2,
                    color: message!.isSender
                        ? Colors.white
                        : primaryColor.withOpacity(0.4),
                  ),
                  Positioned(
                      left: 0,
                      child: Container(
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                            color:
                                message!.isSender ? Colors.white : primaryColor,
                            shape: BoxShape.circle,
                          )))
                ],
              ),
            ),
          ),
          Text(
            "0.37",
            style: TextStyle(
                fontSize: 12, color: message!.isSender ? Colors.white : null),
          )
        ],
      ),
    );
  }
}
