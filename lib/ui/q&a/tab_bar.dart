import 'package:flutter/material.dart';
import 'package:hammies_user/ui/q&a/q&a.dart';
import 'package:hammies_user/ui/q&a/q&a2.dart';
import 'package:hammies_user/ui/q&a/q&a3.dart';
import 'package:hammies_user/ui/q&a/q&a4.dart';
import 'package:hammies_user/ui/q&a/q&a5.dart';

class QuestionTab extends StatefulWidget {


  late final String title;

  @override
  _QuestionTabState createState() => _QuestionTabState();
}

class _QuestionTabState extends State<QuestionTab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Image.asset(
              'assets/logo.png',
              fit: BoxFit.contain,
              height: 40,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Text("YANGON DRIVING SCHOOL",
              style: TextStyle(
                  fontSize: 15,
                  wordSpacing: 2,
                  letterSpacing: 2),
              ),
            ),
              ],
            ),
            backgroundColor: Colors.grey,
            elevation: 0,
            bottom: TabBar(
              indicatorWeight: 10.0,
              tabs: <Widget>[
                Tab(
                  text: 'Q1',
                ),
                Tab(
                  text: 'Q2',
                ),
                Tab(
                  text: 'Q3',
                ),
                Tab(
                  text: 'Q4',
                ),
                Tab(
                  text: 'Q5',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              QandA(),
              QandA2(),
              QandA3(),
              QandA4(),
              QandA5(),
            ],
          )),
    );
  }

  ListView _buildListViewWithName(String s) {
    return ListView.builder(itemBuilder: (context, index)=>ListTile(
      title: Text(s+' $index'),
    ));
  }
}