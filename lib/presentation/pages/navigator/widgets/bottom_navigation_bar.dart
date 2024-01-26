import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({
    super.key,
    required this.currentIndex,
    required this.pageController,
  });

  final int currentIndex;
  final PageController pageController;

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  final _bottomNavigationBarItems = [
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.home,
      ),
      label: '',
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.assignment_rounded,
      ),
      label: '',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.dinner_dining),
      label: '',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.currentIndex,
      items: _bottomNavigationBarItems,
      selectedFontSize: 0,
      onTap: (index) {
        setState(() {
          widget.pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 550),
            curve: Curves.ease,
          );
        });
      },
    );
  }
}
