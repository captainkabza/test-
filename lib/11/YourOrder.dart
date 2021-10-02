import 'package:flutter/material.dart';

class Orderpage extends StatelessWidget {
  const Orderpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('YOUR ORDER', style: Theme.of(context).textTheme.headline1),
    );
    ;
  }
}