import 'package:flutter/material.dart';
import 'package:portfolio_flutter_web_app/widgets/creative_text.dart';
import 'package:portfolio_flutter_web_app/widgets/image_section.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({
    Key? key,
    required this.aboutKey,
  }) : super(key: key);

  final GlobalKey aboutKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Center(
        child: Container(
          key: aboutKey,
          width: double.infinity,
          color: Colors.grey.shade900,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CreativeText(),
              ImageSection(),
            ],
          ),
        ),
      ),
    );
  }
}
