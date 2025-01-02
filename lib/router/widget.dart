import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

// Pages
import '../pages/home.dart';
import '../pages/services.dart';
import '../pages/agender.dart';
import '../pages/comunity.dart';
import '../pages/settings.dart';
//  lembre-se de criar uma pagina de notas , anotaçoes


final _router = GoRouter(
  initialLocation:'/',
  routes:[
    GoRoute(
      name:'home',
      path:'/',
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
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
