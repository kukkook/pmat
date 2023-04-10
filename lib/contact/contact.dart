import 'package:flutter/material.dart';
import 'package:pmat/responsive.dart';
import 'package:pmat/navbar.dart';
import 'package:pmat/menu_drawer.dart';

// import 'package:google_fonts/google_fonts.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import 'package:pmat/footer.dart';
import 'package:pmat/contact/detail.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  // int _currentIndex = 0;

  // void onTabTapped(int index) {
  //   setState(() {
  //     _currentIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: Responsive.isDesktop(context) ? 80 : 60,
          automaticallyImplyLeading: !Responsive.isDesktop(context),
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Color.fromARGB(255, 200, 231, 251),
          elevation: 0,
          centerTitle: true,
          title: !Responsive.isDesktop(context)
              ? Padding(
                  padding: const EdgeInsets.all(20),
                  child: SizedBox(
                    height: 50,
                    width: 100,
                    child: Image.asset(
                      'assets/banner/logo.png',
                    ),
                  ),
                )
              : NavBar()),
      drawer: MenuDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          DetailContact(),
          Footer()],
        ),
      ),
    );
  }
}
