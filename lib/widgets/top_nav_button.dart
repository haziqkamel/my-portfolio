import 'package:flutter/material.dart';

class TopNavButton extends StatelessWidget {
  const TopNavButton({
    Key? key,
    required this.buttonLabel,
    this.onPressed,
  }) : super(key: key);

  final String buttonLabel;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MaterialButton(
          color: Colors.yellow.shade400,
          hoverColor: Colors.white,
          child: Text(buttonLabel),
          onPressed: onPressed),
    );
  }
}
