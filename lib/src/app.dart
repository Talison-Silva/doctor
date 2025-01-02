import 'package:flutter/material.dart';

import 'layout/content.dart';
import 'layout/aside.dart';


/*
class Doctor extends StatefulWidget {
  @override
  State<Doctor> createState() => _DoctorState();
}

class _DoctorState extends State<Doctor> {
  String _content = "services";

  void navigate(String aba){
    setState(() {
      _content = aba;
    });
  }

  Widget dynamicContent(){
    switch (_content) {
      case "services":
        return Text("services");
      case "home":
        return Text("home");
      case "agender":
        return Text("agender");
      case "comunity":
        return Text("comunity");
      case "settings":
        return Text("settings");
      default:
        return Text("default");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Row(
          children:[
            Aside(
              navigate:navigate,
            ),
            Expanded(
              child:Content(
                child:dynamicContent(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
*/



class Doctor extends StatelessWidget {
  final Widget child;

  const Doctor({
    Key? key,
    required this.child,
  }):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Row(
          children:[
            Aside(),
            Expanded(
              child:Content(
                child:child,
              ),
            )
          ],
        ),
      ),
    );
  }
}
