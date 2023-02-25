import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuDrawer extends StatefulWidget {
  const MenuDrawer({
    Key? key,
  }) : super(key: key);

  @override
  _MenuDrawerState createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  bool _showStory = false;
  bool _showRewards = false;
  bool _showCustomers = false;

  bool _showPDPA = false;
  bool _showGovernance = false;
  bool _showRequest = false;

  bool _isAboutExpanded = false;
  bool _isServiceExpanded = false;

  @override
  Widget build(BuildContext context) {
    // var screenSize = MediaQuery.of(context).size;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          ListTile(
            title: Text('หน้าแรก',
                style: GoogleFonts.ibmPlexSansThai(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 35, 34, 51))),
            onTap: () {
              // handle tap on tile
            },
          ),
           
          ListTile(
            title: Text('เกี่ยวกับเรา',
                style: GoogleFonts.ibmPlexSansThai(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 35, 34, 51))),
            onTap: () {
              // handle tap on tile
            },
          ),
          ListTile(
            title: Text('งานบริการ',
                style: GoogleFonts.ibmPlexSansThai(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 35, 34, 51))),
            onTap: () {
              // handle tap on tile
            },
          ),
           ListTile(
            title: Text('ติดต่อเรา',
                style: GoogleFonts.ibmPlexSansThai(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 35, 34, 51))),
            onTap: () {
              // handle tap on tile
            },
          ),
        ],
      ),
    );
  }
}
