import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';

class CustomButtonIcon extends StatelessWidget {
  final IconData icon;
  final VoidCallback eventTap;
  final VoidCallback eventDoubleTap;
  final Color? color;

  const CustomButtonIcon({
    Key? key,
    required this.eventDoubleTap,
    required this.eventTap,
    required this.icon,
    this.color,
  }):super(key:key);

  @override
  Widget build(BuildContext context){

    return GestureDetector(
      onDoubleTap: eventDoubleTap,
      onTap: eventTap,
      child:Container(
        width:26,
        height:26,
        decoration:BoxDecoration(
          borderRadius:BorderRadius.circular(26),
          color:color==null?Theme.of(context).colorScheme.tertiary:color,
        ),
        child:Center(
          child:Icon(icon,size:14),
        ),
      ),
    );
  }
}
