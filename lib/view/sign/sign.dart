import 'package:chatapp/components/primary_button.dart';
import 'package:chatapp/contants/paddings.dart';
import 'package:flutter/material.dart';

class SigninOrSignUpView extends StatelessWidget {
  const SigninOrSignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Column(
          children: [
            Spacer(
              flex: 2,
            ),
            Image.asset(
              MediaQuery.of(context).platformBrightness == Brightness.light
                  ? "assets/images/Logo_light.png"
                  : "assets/images/Logo_dark.png",
              height: 146,
            ),
            Spacer(),
            PrimaryButton(text: "Sign In", press: () {}),
            SizedBox(
              height: defaultPadding * 1.5,
            ),
            PrimaryButton(
              text: "Sign Up",
              press: () {},
              color: Theme.of(context).colorScheme.secondary,
            ),
            Spacer(
              flex: 2,
            )
          ],
        ),
      )),
    );
  }
}
