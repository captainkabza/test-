import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gamepage extends StatefulWidget {
  const Gamepage({Key? key}) : super(key: key);

  @override
  _GamepageState createState() => _GamepageState();
}

class _GamepageState extends State<Gamepage> {
  var i = 0;
  // List<int> list=[1];
  bool showNumber = true;

  _handleClickButton() {
    setState(() {
      i++;
    });
  }

  _handleClickButton2() {
    setState(() {
      i += 2;
    });
  }

  _handleClickButton3() {
    setState(() {
      i += 3;
    });
  }

  _handleClickButton4() {
    setState(() {
      showNumber = !showNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(

          children: [
            Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _handleClickButton();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                  ),
                  child: Text(
                    '1',
                    style: TextStyle(fontSize: 40.0),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    _handleClickButton2();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                  ),
                  child: Text(
                    '2',
                    style: TextStyle(fontSize: 40.0),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    _handleClickButton3();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                  ),
                  child: Text(
                    '3',
                    style: TextStyle(fontSize: 40.0),
                  ),
                ),
              ],
            ),
            Center(
              child: showNumber
                  ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      i.toString(),
                      style: TextStyle(fontSize: 30.0),
                    ),
                  ])
                  : null,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _handleClickButton();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                  ),
                  child: Text(
                    '1',
                    style: TextStyle(fontSize: 40.0),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    _handleClickButton2();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                  ),
                  child: Text(
                    '2',
                    style: TextStyle(fontSize: 40.0),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    _handleClickButton3();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                  ),
                  child: Text(
                    '3',
                    style: TextStyle(fontSize: 40.0),
                  ),
                ),
              ],
            ),
            Image(
              image: AssetImage(
                  showNumber ? 'assets/images/p.png' : 'assets/images/op.png'),
              width: 50.0,
              height: 50.0,
              //fit: BoxFit.fill,
            )
          ],
        ),
      ),
    );
  }
}