import 'package:flutter/material.dart';

import 'package:portfolio_flutter_web_app/widgets/contact_detail.dart';

class ContactWidget extends StatelessWidget {
  final GlobalKey contactKey;

  const ContactWidget({
    Key? key,
    required this.contactKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Center(
        child: Center(
          child: Container(
              width: double.infinity,
              color: Colors.black,
              key: contactKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "<Contact>",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow.shade400,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Wrap(
                    children: [
                      Image.network(
                        "https://i.ibb.co/TP18pg5/contactus.png",
                        height: 400,
                        width: 400,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      const ContactDetail(),
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
