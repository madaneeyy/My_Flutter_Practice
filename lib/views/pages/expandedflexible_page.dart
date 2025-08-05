import 'package:flutter/material.dart';

class expandedflexiblePage extends StatelessWidget {
  const expandedflexiblePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  color: Colors.teal,
                  height: 20,
                  child: Text('hello'),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  color: Colors.amber,
                  height: 20,
                  child: Text('Hello'),
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            children: [
              Flexible(
                child: Container(
                  color: Colors.amber,
                  height: 20,
                  child: Text('Hello'),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.teal,
                  height: 20,
                  child: Text('hello'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
