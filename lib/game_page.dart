import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GameList extends StatefulWidget {
  const GameList({Key? key}) : super(key: key);

  @override
  _GameListState createState() => _GameListState();
}

class _GameListState extends State<GameList> {
  List<int> list= [1,2,3];

  _handleClickButton(){
    setState(() {
      list.add(list.length+1);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [
              Column(
               mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for(var item in list)
                    Text(item.toString(),style: TextStyle(fontSize:30.0),),
                  TextButton(onPressed: _handleClickButton, child: Text('TEST'))
              ],
        ),
            ],
          ),
      ),
     ),
    );
  }
}
