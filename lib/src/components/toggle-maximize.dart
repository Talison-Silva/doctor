import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';

import './custom-button-icon.dart';

class ToggleMaximize extends StatefulWidget {

  @override
  State<ToggleMaximize> createState() => _ToogleMaximizeState();
}

class _ToogleMaximizeState extends State<ToggleMaximize> {
  bool _restore = false;

  @override
  Widget build(BuildContext build){
    return _restore? CustomButtonIcon(
      icon:Icons.zoom_out_map_rounded,
      eventTap: (){
        appWindow.maximize();
        setState(() => _restore = false);
      },
      eventDoubleTap: (){
        appWindow.maximize();
        setState(() => _restore = false);
      },
      color:Color(0xFF434343),
    ):CustomButtonIcon(
      icon:Icons.zoom_in_map_rounded,
      eventTap: (){
        appWindow.restore();
        setState(() => _restore = true);
      },
      eventDoubleTap: (){
        appWindow.restore();
        setState(() => _restore = true);
      },
      color:Color(0xFF464646),
    );
  }
}
