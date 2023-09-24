import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:rate_purdue_apartment/context_keeper.dart';

class TestView extends StatefulWidget {
  const TestView({Key? key}) : super(key: key);

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  final CupertinoTabController _tabController = CupertinoTabController();

  final _tabBarKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];

  @override
  void initState() {
    super.initState();
    ContextKeeper().init(context);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(onWillPop: () async {
      return !await _tabBarKeys[_tabController.index]
            .currentState!
            .maybePop();
    },
    child: CupertinoTabScaffold(controller: _tabController, tabBar: 
    CupertinoTabBar(
      activeColor: Colors.white, 
      items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: 'Home',
            ),
            
            BottomNavigationBarItem(
              icon: Icon(Icons.circle_outlined),
              activeIcon: Icon(Icons.circle),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              activeIcon: Icon(Icons.person),
              label: 'Account',
            ),
          ],
    ), tabBuilder: (BuildContext context, int index) 
    { 
        switch (index) {
        case 0: 
          return CupertinoTabView(
                navigatorKey: _tabBarKeys[0],
                builder: (context) {
                  return const CupertinoPageScaffold(
                    child: TestView(),
                  );
                },
              );
        case 1: 
          return CupertinoTabView(
                navigatorKey: _tabBarKeys[1],
                builder: (context) {
                  return const CupertinoPageScaffold(
                    child: TestView(),
                  );
                },
              );
        case 2: 
          return CupertinoTabView(
                navigatorKey: _tabBarKeys[2],
                builder: (context) {
                  return const CupertinoPageScaffold(
                    child: TestView(),
                  );
                },
              );
              
        default: 
          return 
           CupertinoTabView(
                navigatorKey: _tabBarKeys[2],
                builder: (context) {
                  return const CupertinoPageScaffold(
                    child: TestView(),
                  );
                },
              );
      }
     },
    ),
    );
  }
}

