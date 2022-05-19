import 'package:flutter/material.dart';

import 'package:portfolio_flutter_web_app/models/skill_data.dart';

class SkillWidget extends StatelessWidget {
  const SkillWidget({
    Key? key,
    required this.skillKey,
  }) : super(key: key);

  final GlobalKey skillKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: Center(
        child: Container(
          height: 500,
          width: double.infinity,
          color: Colors.grey.shade900,
          key: skillKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  '<Skills>',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow.shade400),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(10),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: SkillData.skills.length,
                  itemBuilder: (context, i) => Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      color: Colors.yellowAccent.shade700,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Image.network(
                              SkillData.skills[i].image,
                              height: 80,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            SkillData.skills[i].skillTitle,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                    ),
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
