import 'package:flutter/material.dart';
import '../app.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context){
    return Doctor(
      child:Container(
        color:Colors.pink,
      ),
    );
  }
}
