import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/constants.dart';
import 'package:flutter_application_1/views/pages/course_page.dart';
import 'package:flutter_application_1/widgets/container_widget.dart';
import 'package:flutter_application_1/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> list = [
      KValue.basicLayout,
      KValue.cleanUi,
      KValue.fixBugs,
      KValue.keyConcepts,
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            HeroWidget(title: 'Madanu', nextPage: CoursePage()),
            ...List.generate(list.length, (index) {
              return ContainerPage(
                title: list.elementAt(index),
                description: 'Description of basic layout',
              );
            }),
          ],
        ),
      ),
    );
  }
}
