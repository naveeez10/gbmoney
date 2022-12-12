import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.black26,
          appBar: AppBar(
              title: const Text("Expense Tracker"),
              centerTitle: true,
              backgroundColor: Theme.of(context).primaryColor
          ),
          body: const Text("Hey"),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.white,
            showUnselectedLabels: true,
            items: const  <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.paid),
                label: 'Expenses',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart),
                label: 'Reports',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add),
                label: 'Add',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings',
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.blue,
          ),
        ));
  }
}
