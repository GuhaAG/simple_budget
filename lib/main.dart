import 'package:flutter/material.dart';

void main() {
  runApp(SimpleBudgetApp());
}

class SimpleBudgetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  List<String> _tabs = ["Home", "Category", "Report"];

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: _tabs.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Simple Budget"),
          bottom: TabBar(
            controller: _tabController,
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.category)),
              Tab(icon: Icon(Icons.report)),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            Center(
                child: Text(
              "Home",
              style: Theme.of(context).textTheme.headline4,
            )),
            Center(
                child: Text(
              "Category",
              style: Theme.of(context).textTheme.headline4,
            )),
            Center(
                child: Text(
              "Reports",
              style: Theme.of(context).textTheme.headline4,
            ))
          ],
        ));
  }
}
