import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class gamepage extends StatefulWidget {
  const gamepage({Key? key}) : super(key: key);

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<gamepage> {
  String word = "สวัสดีครับท่านผู้ชม";
  int i = 0;

  font(int a) {
    if (a == 1) {
      setState(() {
        i = 1;
      });
    } else if (a == 2) {
      setState(() {
        i = 2;
      });
    } else if (a == 3) {
      setState(() {
        i = 3;
      });
    } else if (a == 4) {
      setState(() {
        i = 4;
      });
    } else if (a == 5) {
      setState(() {
        i = 5;
      });
    }
  }

  changefont(word) {
    if (i == 1) {
      return Text(
        word,
        style: GoogleFonts.mitr(fontSize: 50.0),
      );
    } else if (i == 2) {
      return Text(
        word,
        style: GoogleFonts.mali(fontSize: 50.0),
      );
    } else if (i == 3) {
      return Text(
        word,
        style: GoogleFonts.chonburi(fontSize: 50.0),
      );
    } else if (i == 4) {
      return Text(
        word,
        style: GoogleFonts.charmonman(fontSize: 50.0),
      );
    } else if (i == 5) {
      return Text(
        word,
        style: GoogleFonts.charm(fontSize: 50.0),
      );
    } else {
      return Text(
        word,
        style: GoogleFonts.mitr(fontSize: 50.0),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(
        title: Text("THAI FONT VIEWER"),
        backgroundColor: Colors.teal,
      ),
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Center(
                    child: changefont(word),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      child: i == 1
                          ? Text("Font: Mitr")
                          : i == 2
                          ? Text("Font: Mali")
                          : i == 3
                          ? Text("Font: Chonburi")
                          : i == 4
                          ? Text("Font: Charmonman")
                          : i == 5
                          ? Text("Font: Charm")
                          : Text("Font: Mitr"),
                    ),
                    Card(
                      elevation: 5.0,
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: () => font(1),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.teal,
                              ),
                              child: Text(
                                'Mitr',
                                style: TextStyle(fontSize: 20.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: () => font(2),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.teal,
                              ),
                              child: Text(
                                'Mali',
                                style: TextStyle(fontSize: 20.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: () => font(3),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.teal,
                              ),
                              child: Text(
                                'Chonburi',
                                style: TextStyle(fontSize: 20.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: () => font(4),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.teal,
                              ),
                              child: Text(
                                'Charmonman',
                                style: TextStyle(fontSize: 20.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: () => font(5),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.teal,
                              ),
                              child: Text(
                                'Charm',
                                style: TextStyle(fontSize: 20.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}