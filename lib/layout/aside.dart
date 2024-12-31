import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';

//import '../components/navigate/index.dart';
import './header.dart';
import '../components/custom-button-icon.dart';
import '../components/toggle-maximize.dart';
//import '../components/navigate/index.dart';
import '../components/aside-item.dart';

class Aside extends StatelessWidget {
  final void Function(String) navigate;

  const Aside({
    Key? key,
    required this.navigate,
  }):super(key:key);

  Widget header(){
    return Header(
      child:Row(
        children:[
          ToggleMaximize(),
          Expanded(
            child:Center(
              child:Text("doctor desktop")
            )
          )
        ]
      ),
    );
  }

  Widget content(){
    return Expanded(
      child:Padding(
        padding:EdgeInsets.symmetric(vertical:12),
        child:Column(
          children:[
            Column(
              children:[
                AsideItem(
                  text:"home",
                  icon:Icons.home_sharp,
                  iconOutline:Icons.home_sharp,
                  navigate:navigate,
                ),
                AsideItem(
                  text:"services",
                  icon:Icons.cases_rounded,
                  iconOutline:Icons.cases_outlined,
                  navigate:navigate,
                ),
                AsideItem(
                  text:"agender",
                  icon:Icons.calendar_month,
                  iconOutline:Icons.calendar_month_outlined,
                  navigate:navigate,
                ),
                AsideItem(
                  text:"comunity",
                  icon:Icons.forum_rounded,
                  iconOutline:Icons.forum_outlined,
                  navigate:navigate,
                )
              ],
            ),
            Expanded(child:Container()),
            AsideItem(
              text:"settings",
              icon:Icons.settings,
              iconOutline:Icons.settings_outlined,
              navigate:navigate,
            ),
          ]
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width:220,
      decoration: BoxDecoration(
        border: Border(right: BorderSide(color: Color(0xFF363737),width:1)),
        color:Theme.of(context).colorScheme.secondary,
      ),
      child:Column(
        children:[
          header(),
          content(),
        ]
      ),
    );
  }
}
