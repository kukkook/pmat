

import 'package:flutter/material.dart';
import 'package:pmat/responsive.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pmat/navbar.dart';
import 'package:pmat/menu_drawer.dart';
import 'package:go_router/go_router.dart';
import 'package:pmat/footer.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
            Center(
      child: Container(
        // width: 1440,
        color: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                width: Responsive.isDesktop(context)
                    ? 1440
                    : Responsive.isTablet(context)
                        ? 768
                        : 375,
                child: Image.asset("assets/header/service.png")),
            Padding(
            padding: const EdgeInsets.only(top: 30,),
            child: Container(
              width: Responsive.isDesktop(context)
                  ? 1440
                  : Responsive.isTablet(context)
                      ? 768
                      : 375,
              height: Responsive.isDesktop(context)
                  ? 40
                  : Responsive.isTablet(context)
                      ? 35
                      : 30,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 13, 26, 121),
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                "ตราประทับบริษัท",
                style: GoogleFonts.sarabun(
                  fontSize: Responsive.isDesktop(context)
                      ? 25
                      : Responsive.isTablet(context)
                          ? 20
                          : 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),

            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 25,bottom: 30),
            child: Container(
               width: Responsive.isDesktop(context)
                      ? 800
                      : Responsive.isTablet(context)
                          ? 600
                          : 300,
              child: Image.asset("assets/detail/work1.jpg",fit: BoxFit.fitWidth,)),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 80),
            child: Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Color.fromARGB(255, 13, 26, 121),
                  width: 2
                )
              ),
              child: TextButton(
                onPressed: () => context.go('/services'), 
              child: Text("งานบริการอื่นๆ",
              style: GoogleFonts.sarabun(
                fontSize: 18,
                color: Color.fromARGB(255, 13, 26, 121),
              ),)
              ),
            ),
          ),

          Footer()
          
          ],
        ),
      ),
            )
 ],
        ),
      ),
    );}
}