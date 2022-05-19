import 'package:flutter/material.dart';

class ProjectShowcase extends StatelessWidget {
  const ProjectShowcase({
    Key? key,
    required this.image,
    required this.projectTitle,
    required this.projectDescription,
  }) : super(key: key);

  final String image;
  final String projectTitle;
  final String projectDescription;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        width: 600,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              image,
              height: 250,
              width: 500,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(
                projectTitle,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              projectDescription,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
