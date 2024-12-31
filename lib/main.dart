import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';

import 'layout/content.dart';
import 'layout/aside.dart';

import 'pages/services.dart';

void main() {
  runApp(const MyApp());

  doWhenWindowReady(() {
    const initialSize = Size(1024, 650);
    appWindow.minSize = initialSize;
    appWindow.size = initialSize;
    appWindow.alignment = Alignment.center;
    appWindow.show();
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // quaternary: Color(0xFF484848),
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        colorScheme: ColorScheme.dark(
          background: Colors.red,
          primary:    Color(0xFF1C1C1C),
          secondary:  Color(0xFF2B2B2B),
          tertiary:   Color(0xFF242424),
        ),
        useMaterial3: true,
      ),
      home: Doctor(),
    );
  }
}

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
