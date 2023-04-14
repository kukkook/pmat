import 'dart:html';

import 'package:flutter/material.dart';
import 'package:pmat/responsive.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pmat/navbar.dart';
import 'package:pmat/menu_drawer.dart';
import 'package:go_router/go_router.dart';
import 'package:pmat/footer.dart';

class MonthlyTax extends StatefulWidget {
  const MonthlyTax({super.key});

  @override
  State<MonthlyTax> createState() => _MonthlyTaxState();
}

class _MonthlyTaxState extends State<MonthlyTax> {
  @override
  Widget build(BuildContext context) {
    List<String> first = [
      "ให้คำแนะนำการยื่นภาษีมูลค่าเพิ่ม - VAT เพื่อให้สอดคล้องกับสรรพากร",
      "จัดทำและยื่นภาษีเงินได้พนักงานหัก ณ ที่จ่าย (ภงด.1)",
      "จัดทำและยื่นภาษีเงินได้บุคคลธรรมดาหัก ณ ที่จ่าย (ภงด.3)",
      "จัดทำและยื่นภาษีเงินได้นิติบุคคลหัก ณ ที่จ่าย (ภงด.53)",
      "จัดทำและยื่นภาษีมูลค่าเพิ่ม - VAT (ภพ.30)",
      "จัดทำรายงานภาษีซื้อและรายงานภาษีขายประจำเดือน",
      "จัดทำและยื่นเงินสมทบประกันสังคมประจำเดือน",
      "ให้คำปรึกษาปัญหาภาษีตลอดปีโดยไม่คิดค่าบริการเพิ่มเติม",
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
      "ให้คำแนะนำวิธีการบัญชีเพื่อผลด้านภาษีอากรที่ดีและถูกต้อง",
      "ให้คำแนะนำระบบบัญชี ผังทางเดินเอกสาร รวมถึงเอกสารเบื้องต้นที่จำเป็นในการบันทึกบัญชี",
      "บันทึกรายการค้าประจำเดือน จัดทำสมุดบัญชีซื้อ, สมุดบัญชีขาย, สมุดบัญชีรับเงิน, สมุดบัญชีจ่ายเงิน, สมุดบัญชีจ่ายเงินสดย่อย, สมุดรายวันทั่วไป และบัญชีแยกประเภท",
      "จัดทำงบทดลองและงบการเงิน",
      "จัดทำงบกระทบยอดเงินฝากธนาคาร",
      "จัดทำทะเบียนสินทรัพย์",
      "จัดทำรายละเอียดประกอบบัญชีที่สำคัญเช่นรายละเอียดลูกหนี้, รายละเอียดเจ้าหนี้ เป็นต้น",
      "ลงทะเบียนเป็นผู้ทำบัญชี",
      "ให้คำปรึกษาปัญหาบัญชีตลอดปีโดยไม่คิดค่าบริการเพิ่มเติม"
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

    List<String> third = [
      "จัดทำและยื่นแบบการนำส่งเงินสมทบประกันสังคมรายเดือน",
      "จัดทำและยื่นแบบการนำส่งเงินกองทุนทดแทนประจำปี",
      "แจ้งเปลี่ยนแปลงพนักงานเข้า-ออก",
      "ให้คำปรึกษาด้านประกันสังคมที่เกี่ยวข้องกับกิจการ ตลอดสัญญาบริการ",
      "แบบคำนวณค่าจ้างเพื่อประกอบการรายงานค่าจ้างตามแบบ กท.20 ก ประจำปี และยื่นต่อสำนักงานประกันสังคม",
    ];

    var fullThird = Container(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: third.length,
        itemBuilder: (context, index) {
          return ListTile(
            dense: true,
            leading: SizedBox(
                width: 15,
                height: 15,
                child: Image.asset("assets/detail/dot.png")),
            title: Text(
              third[index],
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

    List<String> fourth = [
      "เอกสารช่วงวันที่ 1-15 ของเดือน จะต้องส่งให้ภายในวันที่ 20 ของเดือนนั้น ๆ",
      "เอกสารช่วงวันที่ 16-31 ของเดือน จะต้องส่งให้ภายในวันที่ 2 ของเดือนถัดไป",
      "แบบ ภ.ง.ด. 1, 3, 53 ต้องยื่นสรรพากรภายในวันที่ 7 ของเดือนถัดไป",
      "แบบ ภ.พ.30 ต้องยื่นสรรพากรภายในวันที่ 15 ของเดือนถัดไป",
      "แบบ ภ.ง.ด.51 ต้องยื่นสรรพากรภายในวันที่ 31 สิงหาคมของทุกปี",
      "แบบ ภ.ง.ด.50 - งบการเงิน ต้องยื่นสรรพากร-กระทรวงพาณิชย์ ภายในเดือน พฤษภาคม ของทุกปี",
    ];

    var fullFourth = Container(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: fourth.length,
        itemBuilder: (context, index) {
          return ListTile(
            dense: true,
            leading: SizedBox(
                width: 15,
                height: 15,
                child: Image.asset("assets/detail/dot.png")),
            title: Text(
              fourth[index],
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

    List<String> fifth = [
      "รายงานภาษีซื้อ และเอกสารประกอบรายงานภาษีซื้อ",
      "รายงานภาษีขายและเอกสารประกอบรายงานภาษีขาย",
      "เอกสารประกอบการจ่ายเงิน เช่น ใบสำคัญจ่าย หรือใบถอนเงินจากธนาคาร,ใบเสร็จรับเงิน",
      "เอกสารประกอบการรับเงิน เช่น ใบสำคัญรับ หรือใบนำฝากธนาคาร (Pay in slip)",
      "เอกสารประกอบการจ่ายเงินค่าใช้จ่าย อื่น ๆ",
      "Bank Statement บัญชีกระแสรายวัน และสมุดเงินฝากบัญชีออมทรัพย์ของกิจการ",
      "ใบเสร็จรับเงิน พร้อมทั้งแบบ ภ.พ.30, ภ.ง.ด.1, ภ.ง.ด.3, ภ.ง.ด.53 และประกันสังคม",
      "หนังสือรับรองการหักภาษี ณ ที่จ่าย (กรณีมีการหักภาษี ณ ที่จ่ายในเดือนนั้น ๆ)"
    ];

    var fullFifth = Container(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: fifth.length,
        itemBuilder: (context, index) {
          return ListTile(
            dense: true,
            leading: SizedBox(
                width: 15,
                height: 15,
                child: Image.asset("assets/detail/dot.png")),
            title: Text(
              fifth[index],
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

    List<String> sixth = [
      "แบบ สปส.1-10 (ส่วนที่ 1 และ ส่วนที่ 2)",
      "แบบ สปส.1-06 (กรณี แจ้งรับผู้ประกันตนเข้าทำงานเคยยื่นเป็นผู้ประกันตนมาแล้ว)",
      "แบบ สปส.6-09 (กรณีแจ้งสิ้นสุดความเป็นผู้ประกันตน)",
      "แบบ สปส.9-02 (กรณีขอเปลี่ยนแปลงสถานพยาบาล)**",
      "แบบ สปส.1-02 (หนังสือนำส่งกรณีขึ้นทะเบียนผู้ประกันตน)",
      "แบบ สปส.1-03 (แบบขึ้นทะเบียนกรณีขึ้นทะเบียนผู้ประกันตน)",
      "แบบ สปส.1-03/1 (แบบแจ้งกรณีขึ้นทะเบียนผู้ประกันตน)"
    ];

    var fullSixth = Container(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: sixth.length,
        itemBuilder: (context, index) {
          return ListTile(
            dense: true,
            leading: SizedBox(
                width: 15,
                height: 15,
                child: Image.asset("assets/detail/dot.png")),
            title: Text(
              sixth[index],
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
                                "บริการทำบัญชี ภาษีรายเดือน",
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
                              "รับทำบัญชี ยื่นแบบประจำเดือน ประกอบด้วย",
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
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: Responsive.isDesktop(context)
                                ? const EdgeInsets.only(left: 50, top: 10)
                                : Responsive.isTablet(context)
                                    ? const EdgeInsets.only(left: 50, top: 10)
                                    : const EdgeInsets.only(left: 30, top: 10),
                            child: Text(
                              "รับทำบัญชี ปิดบัญชีประจำเดือน ประกอบด้วย",
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
                              child: fullSecond),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: Responsive.isDesktop(context)
                                ? const EdgeInsets.only(left: 50, top: 10)
                                : Responsive.isTablet(context)
                                    ? const EdgeInsets.only(left: 50, top: 10)
                                    : const EdgeInsets.only(left: 30, top: 10),
                            child: Text(
                              "รับทำบัญชี ยื่นประกันสังคม รับทำประกันสังคม",
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
                              child: fullThird),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: Responsive.isDesktop(context)
                                ? const EdgeInsets.only(left: 50, top: 10)
                                : Responsive.isTablet(context)
                                    ? const EdgeInsets.only(left: 50, top: 10)
                                    : const EdgeInsets.only(left: 30, top: 10),
                            child: Text(
                              "ขั้นตอนการทำงานนัดให้ลูกค้าส่งเอกสาร แบ่งเป็น 2 ช่วงคือ",
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
                              child: fullFourth),
                          Padding(
                              padding: Responsive.isDesktop(context)
                                  ? const EdgeInsets.only(left: 70, top: 10)
                                  : Responsive.isTablet(context)
                                      ? const EdgeInsets.only(left: 70, top: 10)
                                      : const EdgeInsets.only(
                                          left: 50, top: 10),
                              child: Text(
                                "หมายเหตุ: ",
                                style: GoogleFonts.sarabun(
                                    fontStyle: FontStyle.italic,
                                    fontSize: Responsive.isDesktop(context)
                                        ? 18
                                        : Responsive.isTablet(context)
                                            ? 15
                                            : 13,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              )),
                          Padding(
                              padding: Responsive.isDesktop(context)
                                  ? const EdgeInsets.only(left: 70, top: 10)
                                  : Responsive.isTablet(context)
                                      ? const EdgeInsets.only(left: 70, top: 10)
                                      : const EdgeInsets.only(
                                          left: 50, top: 10),
                              child: Text(
                                "ทางบริษัทฯ จะเรียกจัดเก็บเงินค่าบริการในเดือนถัดจากเดือนที่รับเอกสารหลังยื่นแบบต่อกรมสรรพากรแล้ว",
                                style: GoogleFonts.sarabun(
                                    fontSize: Responsive.isDesktop(context)
                                        ? 18
                                        : Responsive.isTablet(context)
                                            ? 15
                                            : 13,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              )),

                              SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: Responsive.isDesktop(context)
                                ? const EdgeInsets.only(left: 50, top: 10)
                                : Responsive.isTablet(context)
                                    ? const EdgeInsets.only(left: 50, top: 10)
                                    : const EdgeInsets.only(left: 30, top: 10),
                            child: Text(
                              "เอกสารที่ทางลูกค้าต้องเตรียมให้กับบริษัทรับทำบัญชี",
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
                              child: fullFifth),
                               SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: Responsive.isDesktop(context)
                                ? const EdgeInsets.only(left: 50, top: 10)
                                : Responsive.isTablet(context)
                                    ? const EdgeInsets.only(left: 50, top: 10)
                                    : const EdgeInsets.only(left: 30, top: 10),
                            child: Text(
                              "เอกสารที่ใช้ในการยื่นต่อสำนักงานประกันสังคม",
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
                              child: fullSixth),

                        Padding(
                              padding: Responsive.isDesktop(context)
                                  ? const EdgeInsets.only(left: 70, top: 10)
                                  : Responsive.isTablet(context)
                                      ? const EdgeInsets.only(left: 70, top: 10)
                                      : const EdgeInsets.only(
                                          left: 50, top: 10),
                              child: Text(
                                "**กรณีขอเปลี่ยนแปลงสถานพยาบาล ทำได้ 2 กรณี คือเมื่อเริ่มเข้าทำงานในสถานประกอบการใหม่เมื่อสิ้นปี",
                                style: GoogleFonts.sarabun(
                                    fontSize: Responsive.isDesktop(context)
                                        ? 15
                                        : Responsive.isTablet(context)
                                            ? 13
                                            : 11,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              )),
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
