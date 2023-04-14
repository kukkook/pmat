import 'package:flutter/material.dart';
import 'package:pmat/responsive.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pmat/navbar.dart';
import 'package:pmat/menu_drawer.dart';
import 'package:go_router/go_router.dart';
import 'package:pmat/footer.dart';

class Examine extends StatefulWidget {
  const Examine({super.key});

  @override
  State<Examine> createState() => _ExamineState();
}

class _ExamineState extends State<Examine> {
  @override
  Widget build(BuildContext context) {
    List<String> first = [
      "งบการเงิน หมายเหตุประกอบงบการเงิน ปีปัจจุบัน",
      "งบทดลอง ปีปัจจุบัน",
      "รายงาน ตรวจสอบบัญชี และงบการเงินปีก่อน",
      "บอจ. 5 (กรณีเป็นบริษัท) , หนังสือรับรองบริษัท หรือห้างฯ",
      "หนังสือรับรองจากผู้บริหาร + หนังสือตอบรับงาน ตรวจสอบบัญชี",
      "ภ.พ. 30 ธันวาคม ปีปัจจุบัน, รายงานภาษีซื้อ-ขาย ธันวาคม - ปีปัจจุบัน",
      "ภ.ง.ด.1 เดือน ธันวาคม - ปีปัจจุบัน + ภ.ง.ด. 1ก",
      "ภ.ง.ด. 3,53 ธันวาคม ปีปัจจุบัน ( พร้อมใบต่อ ภ.ง.ด.ด้วย)",
      "ภ.ง.ด. 50 ปีก่อน",
      "ภ.ง.ด. 51 ปีปัจจุบัน",
      "หนังสือรับรองหัก ณ ที่จ่าย",
      "การคำนวณภาษีเงินได้นิติบุคคล",
      "รายละเอียดภาษีเงินได้ถูกหัก ณ ที่จ่าย"
    ];

    var fullFirst = Container(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: first.length,
        itemBuilder: (context, index) {
          return ListTile(
            dense: true,
            leading: SizedBox(
                width: 15,
                height: 15,
                child: Image.asset("assets/detail/dot.png")),
            title: Text(
              first[index],
              style: GoogleFonts.sarabun(
                  fontSize: Responsive.isDesktop(context)
                      ? 18
                      : Responsive.isTablet(context)
                          ? 15
                          : 13,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
          );
        },
      ),
    );

    List<String> second = [
      'บริการรับตรวจสอบบัญชี โดย "ผู้ตรวจสอบบัญชี" รับอนุญาต (CPA) สำหรับบริษัทและห้างหุ้นส่วนขนาดใหญ่',
      'บริการรับตรวจสอบบัญชี โดย "ผู้ตรวจสอบบัญชี" ภาษีอากร (TA) สำหรับห้างหุ้นส่วนขนาดเล็ก',
      'ตรวจสอบบัญชี - งบการเงิน โดยทีมงาน "ผู้ตรวจสอบบัญชี" รับอนุญาต (CPA) ที่ได้มาตรฐาน',
      'เสนอข้อสังเกตต่อผู้บริหาร เพื่อให้ทราบถึงข้อบกพร่องในการควบคุมภายในทางบัญชีที่สำคัญ และให้คำปรึกษาแนวปฏิบัติที่ถูกต้องในการจัดทำบัญชี',
      "จัดทำงบการเงินซึ่งรวมหมายเหตุประกอบงบการเงิน และเอกสารประกอบการยื่น ต่อกระทรวงพาณิชย์และ กรมสรรพากร ได้แก่ สปช.3, สำเนารายชื่อผู้ถือหุ้น (บอจ.5) นำยื่นส่งกระทรวงพาณิชย์"
    ];

    var fullSecond = Container(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: second.length,
        itemBuilder: (context, index) {
          return ListTile(
            dense: true,
            leading: SizedBox(
                width: 15,
                height: 15,
                child: Image.asset("assets/detail/dot.png")),
            title: Text(
              second[index],
              style: GoogleFonts.sarabun(
                  fontSize: Responsive.isDesktop(context)
                      ? 18
                      : Responsive.isTablet(context)
                          ? 15
                          : 13,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
          );
        },
      ),
    );

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
            Container(
              color: Colors.white,
              child: Center(
                child: Container(
                  // width: 1440,
                  width: Responsive.isDesktop(context)
                      ? 1440
                      : Responsive.isTablet(context)
                          ? 768
                          : 375,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                            width: Responsive.isDesktop(context)
                                ? 1440
                                : Responsive.isTablet(context)
                                    ? 768
                                    : 375,
                            child: Image.asset("assets/header/service.png")),
                      ),
                      Center(
                        child: Padding(
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
                                ? 45
                                : Responsive.isTablet(context)
                                    ? 35
                                    : 30,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 13, 26, 121),
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                "บริการตรวจสอบบัญชี",
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
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: Responsive.isDesktop(context)
                                ? const EdgeInsets.only(left: 50, top: 10)
                                : Responsive.isTablet(context)
                                    ? const EdgeInsets.only(left: 50, top: 10)
                                    : const EdgeInsets.only(left: 30, top: 10),
                            child: Text(
                              "เอกสารที่ต้องเตรียมตรวจสอบบัญชี",
                              style: GoogleFonts.sarabun(
                                  fontSize: Responsive.isDesktop(context)
                                      ? 18
                                      : Responsive.isTablet(context)
                                          ? 15
                                          : 13,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                              padding: Responsive.isDesktop(context)
                                  ? const EdgeInsets.only(left: 70, top: 10)
                                  : Responsive.isTablet(context)
                                      ? const EdgeInsets.only(left: 70, top: 10)
                                      : const EdgeInsets.only(
                                          left: 50, top: 10),
                              child: fullFirst),
                          
                          Padding(
                            padding: Responsive.isDesktop(context)
                                ? const EdgeInsets.only(left: 40, top: 10)
                                : Responsive.isTablet(context)
                                    ? const EdgeInsets.only(left: 40, top: 10)
                                    : const EdgeInsets.only(left: 20, top: 10),
                            child: Text(
                              "บริการรับตรวจสอบบัญชี",
                              style: GoogleFonts.sarabun(
                                  // fontStyle: FontStyle.italic,
                                  fontSize: Responsive.isDesktop(context)
                                      ? 18
                                      : Responsive.isTablet(context)
                                          ? 15
                                          : 13,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                              padding: Responsive.isDesktop(context)
                                  ? const EdgeInsets.only(left: 70, top: 20)
                                  : Responsive.isTablet(context)
                                      ? const EdgeInsets.only(left: 70, top: 20)
                                      : const EdgeInsets.only(
                                          left: 50, top: 20),
                              child: fullSecond),
                        ],
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 80, top: 30),
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
                      ),
                      Footer()
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
