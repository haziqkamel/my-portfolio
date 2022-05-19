import 'package:flutter/material.dart';
import 'package:portfolio_flutter_web_app/models/project_data.dart';
import 'package:portfolio_flutter_web_app/widgets/project_showcase.dart';

class ProjectWidget extends StatelessWidget {
  const ProjectWidget({
    Key? key,
    required this.projectKey,
  }) : super(key: key);

  final GlobalKey projectKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Center(
        child: Container(
          height: 500,
          width: double.infinity,
          color: Colors.black,
          key: projectKey,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  '<Projects>',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: ProjectData.projectList.length,
                  itemBuilder: (context, i) => ProjectShowcase(
                    image: ProjectData.projectList[i].image,
                    projectTitle: ProjectData.projectList[i].projectTitle,
                    projectDescription: ProjectData.projectList[i].description,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
