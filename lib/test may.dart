import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class boxing extends StatefulWidget {
  const boxing({Key? key}) : super(key: key);

  @override
  _GamepageState createState() => _GamepageState();
}

class _GamepageState extends State<boxing> {
  var red= 0;
  var blue = 0;


  // List<int> list=[1];
  bool showNumber = true;
  bool showblue = true;
  bool showred = false;
  bool showstatus = true;
  bool whowin = true;

  _handleClickButton() {
    setState(() {
      red+=10;
      blue+=9;
      showred = !showred;
      showblue = !showblue;
      n();
    });
  }

  _handleClickButton2() {
    setState(() {
      red+=9;
      blue+=10;
      showred = !showred;
      showblue = !showblue;
      n();
    });
  }



  _handleClickButton4() {
    setState(() {
      showNumber = !showNumber;
    });
  }

  n() {
    setState(() {
      if (red >= 20) {
        showstatus = false;
        if (!showred) {
          whowin = false;
          showblue = false;
        }
        else if (showred) {
          whowin = true;
          showblue = false;
          showred = false;
        }
      }
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

  @override
  int x=0;
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar (

      title: Text('OLYMPIC BOXING SCORING'),
    ),
      body: Container(


        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 15.0),
                child : x==0
                    ? Image.asset(
                  "assets/Images/logo.png",
                  height: 70.0,
                )
                    :SizedBox.shrink(),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Icon(
                      Icons.person, // รูปไอคอน
                      size: 80.0, // ขนาดไอคอน
                      color: Color(0xFFA00000), // สีไอคอน
                    ),
                  ),
                  Container(
                    child: Column(children: [

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
                            Text(
                              'IRELAND',
                              style: TextStyle(fontSize: 25.0, color: Colors.black),
                            ),
                          ]),

                      Row(children: [

                        Text(
                          'HARRINGTON Kellie Anne',
                          style: TextStyle(fontSize: 15.0, color: Colors.black),
                        ),
                      ])
                    ]),
                  ),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Icon(
                      Icons.person, // รูปไอคอน
                      size: 80.0, // ขนาดไอคอน
                      color: Color(0xFF0000A0), // สีไอคอน
                    ),
                  ),
                  Container(
                    child: Column(children: [

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
                            Text(
                              'THAILAND',
                              style: TextStyle(fontSize: 25.0, color: Colors.black),
                            ),
                          ]),
                      Row(children: [
                        Text(
                          'SEESONDEE Sudaporn',
                          style: TextStyle(fontSize: 15.0, color: Colors.black),

                        ),
                      ])
                    ]),
                  ),


                ],
              ),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(


                  ),


                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Center(
                          child: Column(
                            children: [
                              showstatus
                                  ? Text(
                                red.toString(),
                                style: TextStyle(fontSize: 100.0),
                              )
                                  : whowin
                                  ? Text(
                                'RED\n win!',
                                style: TextStyle(fontSize: 100.0),
                              )
                                  : Text(
                                'BLUE\n win!',
                                style: TextStyle(fontSize: 100.0),
                              ),
                              showstatus
                                  ? Column(
                                children: [],
                              )
                                  : OutlinedButton(
                                onPressed: () => newgame(),
                                child: Text(
                                  'NEW GAME',
                                  style: TextStyle(fontSize: 30.0),
                                ),
                              )
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ],


              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 5.0, horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,

                  children: [
                    Expanded(child: showblue
                        ? ElevatedButton(
                        onPressed: _handleClickButton,
                        child: Icon(
                          Icons.person, // รูปไอคอน
                          size: 40.0,),
                        style: ElevatedButton.styleFrom(
                          primary:  Color(0xFFA00000)
                          ,)
                    )
                        : ElevatedButton(
                        onPressed: _handleClickButton,
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
                        onPressed: _handleClickButton2,
                        child: Icon(
                          Icons.person, // รูปไอคอน
                          size: 40.0,),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF0000A0),)
                    )
                        : ElevatedButton(
                        onPressed: _handleClickButton,
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
              ),
            ],
          ),
        ),)
      ,
    );
  }
}