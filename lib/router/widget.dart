import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

// Pages
import '../src/pages/home.dart';
import '../src/pages/services.dart';
import '../src/pages/agender.dart';
import '../src/pages/comunity.dart';
import '../src/pages/settings.dart';
//  lembre-se de criar uma pagina de notas , anotaçoes


final _router = GoRouter(
  initialLocation:'/home',
  routes:[
    GoRoute(
      name:'home',
      path:'/home',
      builder: (context,state) => HomePage(),
    ),
    GoRoute(
      name:'services',
      path:'/services',
      builder: (context,state) => ServicesPage(),
    ),
    GoRoute(
      name:'agender',
      path:'/agender',
      builder: (context,state) => AgenderPage(),
    ),
    GoRoute(
      name:'comunity',
      path:'/comunity',
      builder: (context,state) => ComunityPage(),
    ),
    GoRoute(
      name:'settings',
      path:'/settings',
      builder: (context,state) => SettingsPage(),
    ),
  ],
);


class ApplicationRouter extends StatelessWidget {
  const ApplicationRouter({
    super.key
  });

  @override
  Widget build(BuildContext context){
    /*return MaterialApp(
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
    */

    return MaterialApp.router(
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
      routerConfig: _router,
    );
  }
}
