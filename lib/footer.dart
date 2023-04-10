import 'package:flutter/material.dart';
import 'package:pmat/responsive.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';


class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {

  final String facebookUrl = "https://www.facebook.com/pmatacc";

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Responsive.isDesktop(context)
            ? Container(
                height: 200,
                width: double.infinity,
                color: Color.fromARGB(255, 13, 26, 121),
                child: Center(
                  child: Wrap(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                          width: 200,
                          child: Image.asset(
                            "assets/banner/logo.png",
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Container(height: 180,width: 2,color: Colors.white,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30,top:10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Wrap(
                              children: [
                                SizedBox(
                                  width: 15,
                                  height: 15,
                                  child: Icon(
                                    Icons.home,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    "บริษัท ที่ปรึกษาบัญชีและภาษีอากร พรีเมี่ยม พลัส จำกัด",
                                    style: GoogleFonts.sarabun(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15,bottom:15),
                              child: Wrap(
                                children: [
                                  SizedBox(
                                    width: 15,
                                    height: 15,
                                    child: Icon(
                                      Icons.location_pin,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      "1/45-47 ถนนสุขุมวิท ตำบลเนินพระ อำเภอเมืองระยอง จังหวัดระยอง 21150",
                                      style: GoogleFonts.sarabun(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 15),
                              child: Wrap(
                                children: [
                                  SizedBox(
                                    width: 15,
                                    height: 15,
                                    child: Icon(
                                      Icons.facebook,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: GestureDetector(
                                      onTap: () => launch("https://www.facebook.com/pmatacc"),
                                      child: Text(
                                        "www.facebook.com/pmatacc",
                                        style: GoogleFonts.sarabun(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Wrap(
                              children: [
                                SizedBox(
                                  width: 15,
                                  height: 15,
                                  child: Icon(
                                    Icons.phone,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    "โทร. 097-9975856",
                                    style: GoogleFonts.sarabun(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            : Responsive.isTablet(context)
                ? Container()
                : Container());
  }
}
