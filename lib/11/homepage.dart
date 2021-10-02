import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ggggg/11/Profile.dart';
import 'package:ggggg/11/foodmenu.dart';
import 'package:ggggg/11/pagefood.dart';


class HomePage extends StatefulWidget {
  static const routeName = '/home';

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _subPageIndex = 0;
  var _selectedBottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title : _subPageIndex == 0
          ?  Text('FOOD',
           style: TextStyle(
             fontSize: 20.0,
                 color: Colors.white,
             fontWeight: FontWeight.bold
           ),
         )
           : Text('Profile',
             style: TextStyle(
             fontSize: 20.0,
             color: Colors.white,
             fontWeight: FontWeight.bold
         ),
           ),
          ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40.0),
                    child: Container(
                      width: 80.0,
                      height: 80.0,
                      child: Image.asset('assets/images/tem.jpg'),
                    ),
                  ),

                  Text(
                    'Sasithorn Thipphrom',
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                  Text(
                    'Thipphrom_s@silpakorn.edu',
                    style: TextStyle(fontSize: 15.0, color: Colors.white),
                  ),
                ],
              ),
            ),

            ListTile(
              title: _buildDrawerItem(Icon(Icons.fastfood), 'Food'),
              onTap: () => _showSubPage(0),
            ),
            ListTile(
              title: _buildDrawerItem(Icon(Icons.person), 'Profile'),
              onTap: () => _showSubPage(1),
            ),

          ],
        ),
      ),

      body: Container(
        child: _buildSubPage(),
      ),
    );
  }

  _showSubPage(int index) {
    setState(() {
      _subPageIndex = index;
    });
    Navigator.of(context).pop();
  }

  Widget _buildSubPage() {
    switch (_subPageIndex) {

      case 0:
        return Foodpage();

      case 1:
        return ProfilePage();
      default:
        return SizedBox.shrink();
    }
  }

  Row _buildDrawerItem(Widget icon, String title) {
    return Row(
      children: [
        icon,
        SizedBox(width: 8.0),
        Text(title),
      ],
    );
  }
}
