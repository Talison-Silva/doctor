import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';

import './header.dart';
import '../components/window-bttns.dart';

class Content extends StatelessWidget {
  final Widget child;

  const Content({
    Key? key,
    required this.child,
  }):super(key:key);



  @override
  Widget build(BuildContext context) {
     return Container(
      color:Theme.of(context).colorScheme.primary,
      child:Column(
        children:[
          Header(
            child:Row(
              children:[
                Expanded(
                  child:Center(
                    child:Container(),
                  ),
                ),
                WindowBttns(),
              ],
            ),
          ),
          Expanded(
            child:child
          ),
        ]
      ),
     );
  }
}
