import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:pmat/homepage.dart';
import 'package:pmat/about/aboutpage.dart';
// import 'package:wiseintern/customers/customerspage.dart';
// import 'package:wiseintern/services/servicespage.dart';
// import 'package:wiseintern/products/productspage.dart';
// import 'package:wiseintern/features/pdmanagement.dart';
// import 'package:wiseintern/contact/contactpage.dart';
// import 'package:wiseintern/faq/faqpage.dart';
// import 'package:wiseintern/demo/demopage.dart';
// import 'package:wiseintern/producttable/producttablepage.dart';
// import 'package:wiseintern/home/features.dart';
// import 'package:wiseintern/home/packagepage.dart';
// import 'navbar.dart';
// import 'package:wiseintern/home/customers.dart';

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
