import 'package:flutter/material.dart';
import 'academia_content.dart';
import 'work_content.dart';
import 'extra_content.dart';
import 'personal_content.dart';
import 'application_content.dart';

class OverviewNav extends StatefulWidget {
  @override
  _OverviewNavState createState() => new _OverviewNavState();
}

class TabContent {

  const TabContent({this.title, this.content});

  final String title;
  final Widget content;
}


List<TabContent> tabs = <TabContent>[
  new TabContent(title: "Application", content: ApplicationContent()),
  new TabContent(title: "Personal", content: PersonalContent()),
  const TabContent(title: "Academia", content: const AcademiaContent()),
  const TabContent(title: "Work", content: const WorkContent()),
  const TabContent(title: "Extracurricular", content: const ExtraContent()),
];

class _OverviewNavState extends State<OverviewNav> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: new Scaffold(
          appBar: AppBar(
            title: Text('Stefan'),
            bottom: TabBar(
              isScrollable: true,
              tabs: tabs.map((TabContent tab) {
                return Tab(text: tab.title);
              }).toList(),
            ),
          ),
          body: TabBarView(
            children: tabs.map((TabContent tab) {
              return tab.content;
            }).toList(),
          )),
    );
  }
}
