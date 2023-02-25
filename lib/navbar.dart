import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBar extends StatefulWidget {
  // final double opacity;

  NavBar();

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavBar> {
  final List<String> listAbout = <String>[
    'About Us',
    'Our Story',
    'Our Rew',
    'Our Cus',
  ];
  final List<String> listServices = <String>[
    'Our Services',
    'PDPA ',
    'Governance ',
    'Request Demo',
  ];
  String? AboutValue;
  String? ServicesValue;

  final List _isHovering = [
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    // var screenSize = MediaQuery.of(context).size;

    return Container(
      color: Color.fromARGB(255, 200, 231, 251),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Expanded(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // SizedBox(
            //   width: screenSize.width / 4,
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 9, left: 91),
              child: SizedBox(
                // height: 58,
                width: 100,
                child: Image.asset(
                  '/banner/logo2.png',
                ),
              ),
            ),
            SizedBox(
              width: 281,
            ),
            SizedBox(
              height: 30,
              // width: 62,
              child: TextButton(
                child: Text(
                  "หน้าแรก",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 22, 93, 152),
                  ),
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              width: 40,
            ),
            SizedBox(
              height: 30,
              // width: 62,
              child: TextButton(
                child: Text(
                  "เกี่ยวกับเรา",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 22, 93, 152),
                  ),
                ),
                onPressed: () {},
              ),
            ),

            SizedBox(
              width: 40,
            ),
            Container(
              // height: 18,
              width: 100,
              // color: Colors.amber,
              child: TextButton(
                child: Text(
                  "งานบริการ",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 22, 93, 152),
                  ),
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              width: 40,
            ),
            TextButton(
              child: Text(
                "ติดต่อเรา",
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 22, 93, 152),
                ),
              ),
              onPressed: () {},
            ),
          ],
        )),
      ),
    );
  }
}
