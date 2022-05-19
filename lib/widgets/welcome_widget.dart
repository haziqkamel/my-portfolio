import 'package:flutter/material.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle style = const TextStyle(
      fontFamily: 'EmojiOne',
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );

    return Row(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Hi There',
                style: style,
              ),
              TextSpan(
                text: ' I\'m',
                style: style,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
