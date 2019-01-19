import 'package:flutter/material.dart';
import 'package:budget_app/screens/TopicList.dart';
import 'package:budget_app/screens/TopicDetail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BudgetApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: TopicDetail(),
    );
  }

}