import 'package:flutter/material.dart';

/**
 * 12/29 배운 것
 * - Theme.of 로 테마 설정에 따라 색상이 다르게 적용되는 것 
 * - theme.dart 내용 복습 
 */

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(children: [
        Spacer(
          flex: 2,
        ),
        Image.asset("assets/images/welcome_image.png"),
        Spacer(
          flex: 3,
        ),
        Text("Welcome to our freedom\nmessaging app",
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold)),
        Spacer(),
        Text(
          "Freedom talk any person of your\nmother language.",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .color!
                  .withOpacity(0.64)),
        ),
        Spacer(
          flex: 3,
        ),
        FittedBox(
          child: TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Text("Skip",
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .color!
                            .withOpacity(0.8))),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .color!
                      .withOpacity(0.8),
                )
              ],
            ),
          ),
        )
      ])),
    );
  }
}