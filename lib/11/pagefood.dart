import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ggggg/11/YourOrder.dart';
import 'package:ggggg/11/foodmenu.dart';


class Foodpage extends StatefulWidget {
  static const routeName = '/home';

  const Foodpage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Foodpage> {
  var _subPageIndex = 0;
  var _selectedBottomNavIndex = 0;
  Widget _buildSubPage() {
    switch (_selectedBottomNavIndex) {
      case 0: // home page
        return FoodListPage();
      case 1:
        return Orderpage();
      default:
        return SizedBox.shrink();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Your Order',
          ),
        ],
        currentIndex: _selectedBottomNavIndex,
        onTap: _onItemTap,
      ),
      body: Center(
        child: _buildSubPage(),
      ),
    );
  }

  void _onItemTap(index) {
    setState(() {
      _selectedBottomNavIndex = index;
    });
  }

}