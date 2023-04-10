import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:pmat/homepage.dart';
import 'package:pmat/about/aboutpage.dart';
import 'package:pmat/work/workpage.dart';
import 'package:pmat/work/work1.dart';
import 'package:pmat/work/work2.dart';
import 'package:pmat/work/work3.dart';
import 'package:pmat/contact/contact.dart';

void main() {
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return HomePage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'about',
          builder: (BuildContext context, GoRouterState state) {
            return AboutPage();
          },
        ),
        GoRoute(
          path: 'services',
          builder: (BuildContext context, GoRouterState state) {
            return WorkPage();
          },
        ),
        GoRoute(
          path: 'services/seal',
          builder: (BuildContext context, GoRouterState state) {
            return First();
          },
        ),
        GoRoute(
          path: 'services/visa&workpermit',
          builder: (BuildContext context, GoRouterState state) {
            return Second();
          },
        ),
        GoRoute(
          path: 'services/register',
          builder: (BuildContext context, GoRouterState state) {
            return Third();
          },
        ),
        GoRoute(
          path: 'contact',
          builder: (BuildContext context, GoRouterState state) {
            return ContactPage();
          },
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
    );
  }
}
