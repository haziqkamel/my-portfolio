import 'package:flutter/material.dart';
import 'package:portfolio_flutter_web_app/widgets/name_widget.dart';
import 'package:portfolio_flutter_web_app/widgets/welcome_widget.dart';

class CreativeText extends StatelessWidget {
  const CreativeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 10, left: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const WelcomeWidget(),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: NameWidget(),
            ),
            Text(
              'UI/UX DESIGNER + DEVELOPER',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.yellow.shade400,
                  fontSize: 30),
            ),
            const SizedBox(height: 10),
            const Text(
              'I am a professional UI/UX designer with front end development',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 150,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Hire Me'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.yellow,
                    onPrimary: Colors.black,
                    padding: const EdgeInsets.all(10),
                    textStyle: const TextStyle(
                      fontSize: 18,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
