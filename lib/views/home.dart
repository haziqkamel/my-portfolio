import 'package:flutter/material.dart';
import 'package:portfolio_flutter_web_app/widgets/about_widget.dart';
import 'package:portfolio_flutter_web_app/widgets/contact_widget.dart';
import 'package:portfolio_flutter_web_app/widgets/project_widget.dart';
import 'package:portfolio_flutter_web_app/widgets/skill_widget.dart';
import 'package:portfolio_flutter_web_app/widgets/top_nav_button.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  /// Creating Global key for each section
  final aboutKey = GlobalKey();
  final skillsKey = GlobalKey();
  final projectsKey = GlobalKey();
  final contactKey = GlobalKey();

  late dynamic aboutContext;
  late dynamic skillsContext;
  late dynamic projectsContext;
  late dynamic contactContext;

  @override
  initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      aboutContext = aboutKey.currentContext;
      skillsContext = skillsKey.currentContext;
      projectsContext = projectsKey.currentContext;
      contactContext = contactKey.currentContext;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Image.network(
          "https://cdn-icons-png.flaticon.com/512/7207/7207734.png",
          height: 50,
          width: 50,
          fit: BoxFit.cover,
        ),
        title: const Text(
          "< Developer Haziq Kamel >",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          ///About - button
          TopNavButton(
            buttonLabel: "About",
            onPressed: () {
              setState(() {
                if (aboutContext != null) {
                  Scrollable.ensureVisible(aboutContext,
                      alignment: 0,
                      duration: const Duration(milliseconds: 500));
                }
              });
            },
          ),

          /// Projects - button
          TopNavButton(
            buttonLabel: 'Projects',
            onPressed: () {
              setState(() {
                if (projectsContext != null) {
                  Scrollable.ensureVisible(projectsContext,
                      alignment: 0,
                      duration: const Duration(milliseconds: 500));
                }
              });
            },
          ),

          TopNavButton(
            buttonLabel: 'Skills',
            onPressed: () {
              setState(() {
                if (skillsContext != null) {
                  Scrollable.ensureVisible(skillsContext,
                      alignment: 0,
                      duration: const Duration(milliseconds: 500));
                }
              });
            },
          ),

          TopNavButton(
            buttonLabel: 'Contact',
            onPressed: () {
              setState(() {
                if (contactContext != null) {
                  Scrollable.ensureVisible(contactContext,
                      alignment: 0,
                      duration: const Duration(milliseconds: 500));
                }
              });
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// All Section goes here
            AboutWidget(aboutKey: aboutKey),
            ProjectWidget(projectKey: projectsKey),
            SkillWidget(skillKey: skillsKey),
            ContactWidget(contactKey: contactKey),
          ],
        ),
      ),
    );
  }
}
