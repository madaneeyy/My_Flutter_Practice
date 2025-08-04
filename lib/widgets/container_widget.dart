import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/constants.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({
    super.key,
    required this.title,
    required this.description,
  });
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Basic Layout', style: KTextStyle.titleTealText),
              Text(
                'Description of basic layout',
                style: KTextStyle.descriptionText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
