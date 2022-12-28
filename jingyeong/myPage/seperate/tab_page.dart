import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:start_page/myPage/seperate/tab_page_child.dart';

class TabPage extends StatefulWidget {
  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        // 탭의 수 설정
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 0,
            bottom: const TabBar(
              tabs: [
                Tab(text: '판매완료'),
                Tab(text: '구매완료'),
                Tab(text: '판매중'),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Column(
                children: [
                  TabPageChild(),
                  TabPageChild(),
                ],
              ),
              Column(
                children: [
                  TabPageChild(),
                ],
              ),
              Column(
                children: [
                  TabPageChild(),
                  TabPageChild(),
                  TabPageChild(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}