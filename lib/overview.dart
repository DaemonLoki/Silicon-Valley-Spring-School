import 'package:flutter/material.dart';
import 'academia_content.dart';
import 'work_content.dart';
import 'extra_content.dart';
import 'personal_content.dart';
import 'application_content.dart';

class OverviewNav extends StatefulWidget {
  const OverviewNav({Key key}) : super(key: key);

  @override
  OverviewNavState createState() => new OverviewNavState();
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

class OverviewNavState extends State<OverviewNav>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(vsync: this, length: tabs.length);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: new Scaffold(
          appBar: AppBar(
            title: Text('Stefan'),
            bottom: TabBar(
              controller: tabController,
              isScrollable: true,
              tabs: tabs.map((TabContent tab) {
                return Tab(text: tab.title);
              }).toList(),
            ),
          ),
          body: TabBarView(
            controller: tabController,
            children: tabs.map((TabContent tab) {
              return tab.content;
            }).toList(),
          )),
    );
  }
}
