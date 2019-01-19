import 'package:flutter/material.dart';
import 'package:budget_app/screens/TopicDetail.dart';

class TopicList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TopicListState();
  }
}

class TopicListState extends State<TopicList> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Budgets'),
      ),
      body: getNoteListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('FAB clicked');
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return TopicDetail();
          }));
        },
        tooltip: 'Add Budget',
        child: Icon(Icons.add),
      ),
    );
  }

  ListView getNoteListView() {
    TextStyle titleStyle = Theme.of(context).textTheme.subhead;

    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int position) {
        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.tealAccent,
              child: Icon(Icons.lock_open),
            ),

            title: Text('January', style: titleStyle,),

            subtitle: Text('Rs 2000'),
            
            trailing: Icon(Icons.delete, color: Colors.grey,),

            onTap: () {
              debugPrint('ListTile tapped');
            },

          ),
        );
      },
    );
  }
}
