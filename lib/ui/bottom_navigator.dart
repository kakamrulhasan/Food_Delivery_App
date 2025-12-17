import 'package:flutter/material.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({super.key});

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int myCurrentIndex = 0;

  Widget buildIcon(IconData icon, int index) {
    final bool isSelected = myCurrentIndex == index;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      width: isSelected ? 45 : 30,
      height: isSelected ? 45 : 30,
      decoration: BoxDecoration(
        color: isSelected ? Colors.redAccent : Colors.transparent,
        shape: BoxShape.circle,
        boxShadow: isSelected
            ? [
                BoxShadow(
                  color: Colors.redAccent.withOpacity(0.4),
                  blurRadius: 15,
                  offset: Offset(0, 6),
                ),
              ]
            : [],
      ),
      child: Icon(
        icon,
        size: isSelected ? 30 : 24,
        color: isSelected ? Colors.white : Colors.black,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bottom Navigation')),
      body: Center(child: Text('Page $myCurrentIndex')),

      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              blurRadius: 20,
              offset: Offset(0, 6),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: myCurrentIndex,
            onTap: (index) {
              setState(() {
                myCurrentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: buildIcon(Icons.home_filled, 0),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: buildIcon(Icons.search, 1),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: buildIcon(Icons.shopping_cart, 2),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: buildIcon(Icons.person, 3),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: buildIcon(Icons.settings, 4),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
