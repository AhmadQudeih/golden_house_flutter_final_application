import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageView with Builders'),
      ),
      body: PageView.builder(
        itemCount: 3, // The number of pages
        itemBuilder: (BuildContext context, int index) {
          // Use the index to determine the content of each page
          return Container(
            color: Colors.blue,
            child: Center(
              child: Text(
                'Page $index',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }
}
