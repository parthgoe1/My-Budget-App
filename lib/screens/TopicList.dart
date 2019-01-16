import 'package:flutter/material.dart';

class TopicList extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    return TopicListState();
  }
}

class TopicListState extends State<TopicList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Budgets'),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('FAB clicked');
        },

        tooltip: 'Add Budget',

        child: Icon(Icons.add),

      ),
    );

  }

}