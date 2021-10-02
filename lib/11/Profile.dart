import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100.0),
            child: Container(
              width: 200.0,
              height: 200.0,
              child: Image.asset('assets/images/tem.jpg'),
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            'Sasithorn Thipphrom',
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            'Thipphrom_s@silpakorn.edu',
            style: TextStyle(
                fontSize: 15.0,
                color: Colors.black54,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
    ;
  }
}