import 'package:demo2/Components/MainBottomNav.dart';
import 'package:demo2/Components/MainFloatingButton.dart';
import 'package:demo2/Components/SearchAppBar.dart';
import 'package:flutter/material.dart';

class SearchPage2 extends StatefulWidget {
  const SearchPage2({super.key});

  @override
  State<SearchPage2> createState() => _SearchPage2State();
}

class _SearchPage2State extends State<SearchPage2> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page'),
    Text('Search Page'),
    Text('Profile Page'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        appBar: SearchAppBar().build(context),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: const MainFloatingButton(),
        bottomNavigationBar: const MainBottomNav(),
        body: Column(children: [
          Wrap(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: InkWell(
                onTap: () {
                  setState(() {
                    isSelected = !isSelected;
                  });
                },
                child: ChoiceChip(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  backgroundColor: isSelected ? Colors.blue : Colors.grey,
                  avatar: const Icon(Icons.house),
                  label: const Text("House"),
                  selected: isSelected,
                ),
              ),
            ),
          ])
        ]));
  }
}
