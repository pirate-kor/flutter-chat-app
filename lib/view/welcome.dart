import 'package:chatapp/contants/paddings.dart';
import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(children: [
            Spacer(flex: 2,),
        Image.asset("assets/images/icon.png"),
            Spacer(flex: 3,),
        Text("Welcome to our freedom\nmessaging app",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold)),

            Spacer(),
        SizedBox(
          width: defaultPadding / 4,
        ),
        Text(
          "Freedom talk any person of your\nmother language.",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.black.withOpacity(0.64)),
        ),
            Spacer(flex: 3,),
        FittedBox(
          child: TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Text(
                  "Skip",
                  style: TextStyle(color: Colors.black.withOpacity(0.8)),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                )
              ],
            ),
          ),
        )
      ])),
    );
  }
}
