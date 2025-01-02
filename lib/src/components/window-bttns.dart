import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';

import './custom-button-icon.dart';

class WindowBttns extends StatefulWidget {
  const WindowBttns({super.key});

  @override
  State<WindowBttns> createState() => _WindowBttnsState();
}

class _WindowBttnsState extends State<WindowBttns> {
  bool _toggleMaximize = false;


  @override
  Widget build(BuildContext context){
    return Row(
      children:[
        CustomButtonIcon(
          icon:Icons.minimize,
          eventTap: (){
            appWindow.minimize();
          },
          eventDoubleTap: (){
            appWindow.minimize();
          }
        ),
        SizedBox(
          width:10,
        ),
        CustomButtonIcon(
          icon:Icons.close,
          eventTap: (){
            appWindow.close();
          },
          eventDoubleTap: (){
            appWindow.close();
          }
        ),
      ],
    );
  }
}
