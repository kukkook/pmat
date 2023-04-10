import 'package:flutter/material.dart';
import 'package:pmat/responsive.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pmat/navbar.dart';
import 'package:pmat/menu_drawer.dart';
import 'package:go_router/go_router.dart';
import 'package:pmat/footer.dart';

class Third extends StatefulWidget {
  const Third({super.key});

  @override
  State<Third> createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
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
                      padding: const EdgeInsets.only(
                        top: 30,
                      ),
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
                          "บริการจดทะเบียนเปลี่ยนแปลงแก้ไขอื่นๆ",
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15, bottom: 15),
                          child: Text(
                            "บริการจดทะเบียนเปลี่ยนแปลงแก้ไขอื่นๆ",
                            style: GoogleFonts.sarabun(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                        ),

                        Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Text(
                                  "- จดทะเบียนแก้ไขเปลี่ยนแปลงต่างๆ เช่น แก้ไขเปลี่ยนแปลงชื่อบริษัท, กรรมการเข้าใหม่ - ลาออก, อำนาจกรรมการ, เพิ่มเติมวัตถุประสงค์, ย้ายสถานประกอบการ, เพิ่มสาขา, ลดสาขา เพิ่มทุน,ลดทุน ฯลฯ",
                                  style: GoogleFonts.sarabun(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Text(
                                  "- จดทะเบียนเข้าระบบภาษีมูลค่าเพิ่ม, ภาษีธุรกิจเฉพาะ",
                                  style: GoogleFonts.sarabun(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Text(
                                  "- จดทะเบียนเครื่องหมายการค้า, สิทธิบัตร และอื่นๆ",
                                  style: GoogleFonts.sarabun(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Text(
                                  "- ขอใบอนุญาตต่างๆ เช่น ใบอนุญาตประกอบกิจการท่องเที่ยว, จำหน่ายสุราไทย - นอก, จำหน่ายบุหรี่ไทย - นอก",
                                  style: GoogleFonts.sarabun(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Text(
                                  "- ขอเลขประจำตัวผู้เสียภาษีอากรของบริษัท, ห้างหุ้นส่วนจำกัด, คณะบุคคล, ห้างร้าน",
                                  style: GoogleFonts.sarabun(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Text(
                                  "- ขอหนังสือรับรอง รวมทั้งคัดลอกเอกสารต่างๆ",
                                  style: GoogleFonts.sarabun(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Text(
                                  "- ขึ้นทะเบียนประกันสังคมของนายจ้าง, ลูกจ้าง, และแจ้งการเปลี่ยนแปลงต่างๆ",
                                  style: GoogleFonts.sarabun(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Text(
                                  "- ทำบัตรผู้จัดการกรมศุลกากร",
                                  style: GoogleFonts.sarabun(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 80,top:30),
                      child: Container(
                        width: 200,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                                color: Color.fromARGB(255, 13, 26, 121),
                                width: 2)),
                        child: TextButton(
                            onPressed: () => context.go('/services'),
                            child: Text(
                              "งานบริการอื่นๆ",
                              style: GoogleFonts.sarabun(
                                fontSize: 18,
                                color: Color.fromARGB(255, 13, 26, 121),
                              ),
                            )),
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
    );
  }
}
