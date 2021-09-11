import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mid extends StatefulWidget {
  const mid({Key? key}) : super(key: key);

  @override
  _gamepagemid createState() => _gamepagemid();
}

class _gamepagemid extends State<mid> {
  @override
  var x = 0;

  get child => null;
  var red= 0;
  var blue = 0;


  // List<int> list=[1];
  bool showNumber = true;
  bool showblue = true;
  bool showred = false;
  bool showstatus = true;
  bool whowin = true;

  _ClickButton() {
    setState(() {
      red+=10;
      blue+=9;
      showred = !showred;
      showblue = !showblue;
    });
  }

  _ClickButton2() {
    setState(() {
      red+=9;
      blue+=10;
      showred = !showred;
      showblue = !showblue;
    });
  }



  _ClickButton4() {
    setState(() {
      showNumber = !showNumber;
    });
  }


  newgame() {
    setState(() {
      red = 0;
      showred = true;
      showblue = false;
      showstatus = true;
    });
  }


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OLYMPIC BOXING SCORING"),
      ),
      body: Container(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 15.0),
                  child: x == 0
                      ? Image.asset(
                          "assets/images/logo.png",
                          height: 60.0,
                        )
                      : SizedBox.shrink(),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.black,
                    height: 20.0,
                    child: Center(
                      child: Text(
                        "Women's Light (57-60kg) Semi-final",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),

                  ),
                ),

              ],
            ),
            Row(children: [
              Container(
                child: Icon(
                  Icons.person,
                  size: 80.0,
                  color: Color(0xFFA00000),
                ),
              ),
              Container(
                  child: Column(
                children: [
                  Row(
                    children: [
                      Center(
                        child: x == 0
                            ? Image.asset(
                                "assets/images/flag_ireland.png",
                                height: 20.0,
                              )
                            : SizedBox.shrink(),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          'IRELAND',
                          style: TextStyle(fontSize: 15.0, color: Colors.black),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10.0),
                    child: Text(
                      'HARRINGTON Keliie Anne',
                      style: TextStyle(fontSize: 15.0, color: Colors.black),
                    ),
                  )
                ],
              ))
            ]),
            Row(children: [
              Container(
                child: Icon(
                  Icons.person,
                  size: 80.0,
                  color: Color(0xFF0000A0),
                ),
              ),
              Container(
                  child: Column(
                children: [
                  Row(
                    children: [
                      Center(
                        child: x == 0
                            ? Image.asset(
                                "assets/images/flag_thailand.png",
                                height: 20.0,
                              )
                            : SizedBox.shrink(),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          'THAILAND',
                          style: TextStyle(fontSize: 15.0, color: Colors.black),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10.0),
                    child: Text(
                      'SEESONDEE Sudaporn',
                      style: TextStyle(fontSize: 15.0, color: Colors.black),
                    ),
                  )
                ],
              ))
            ]),
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Color(0xFFA00000),
                    height: 5.0,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Color(0xFF0000A0),
                    height: 5.0,
                  ),
                ),
              ],
            ),
            Column(),Column(),Column(),Column(),Column(),
            Column(),Column(),Column(),Column(),Column(),
            Column(),Column(),Column(),Column(),Column(),


          Column(

            children:[
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 5.0, horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [
                  Expanded(child: showblue
                      ? ElevatedButton(
                      onPressed: _ClickButton,
                      child: Icon(
                        Icons.person, // รูปไอคอน
                        size: 40.0,),
                      style: ElevatedButton.styleFrom(
                        primary:  Color(0xFFA00000)
                        ,)
                  )
                      : ElevatedButton(
                      onPressed: _ClickButton,
                      child: Icon(
                        Icons.person, // รูปไอคอน
                        size: 40.0,),
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xFFA00000))
                  ),
                  ),
                  SizedBox(width: 20.0),
                  Expanded(child: showblue
                      ? ElevatedButton(
                      onPressed: _ClickButton2,
                      child: Icon(
                        Icons.person, // รูปไอคอน
                        size: 40.0,),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF0000A0),)
                  )
                      : ElevatedButton(
                      onPressed: _ClickButton,
                      child: Icon(
                        Icons.person, // รูปไอคอน
                        size: 40.0,),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF0000A0),)
                  )
                  ),
                  SizedBox(width: 20.0),
                ],
              ),
            ),]
          ),
          ],
        ),


      ),
    );
  }
}
