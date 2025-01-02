import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';

import '../components/window-bttns.dart';

class Header extends StatelessWidget {
  final Widget child;

  const Header({
    Key? key,
    required this.child,
  }):super(key:key);

  @override
  Widget build(BuildContext context) {
    /*
    return Container(
      width:MediaQuery.of(context).size.width,
      height: 46,
      color: Theme.of(context).colorScheme.primary,
      child: Row(
        children:[
          Expanded(
            child:MoveWindow(
              child:Row(
                children:[
                  Container(
                    width:220,
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.transparent),
                        left: BorderSide(color: Colors.transparent),
                        right: BorderSide(color: Color(0xFF363737)),
                        bottom: BorderSide(color: Colors.transparent),

                      ),
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    child:Center(
                      child:Text("doctor desktop")
                    ),
                  ),
                ],
              ),
            ),
          ),
          WindowBttns(),
        ],
      ),
    );
    */

    return Container(
      height:46,
      child:Padding(
        padding:EdgeInsets.symmetric(horizontal:14),
        child:MoveWindow(
          child:child,
        ),
      ),
    );

    /*
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children:[
      Container(
        width:220,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.transparent),
            left: BorderSide(color: Colors.transparent),
            right: BorderSide(color: Color(0xFF363737)),
            bottom: BorderSide(color: Colors.transparent),

          ),
          color: Theme.of(context).colorScheme.primary,
        ),
        child:Center(
          child:Text("Doctor Desktop")
        ),
      ),
      Expanded(
        child:Container(),
      ),
      WindowBttns(),
    ]
    */
  }
}
