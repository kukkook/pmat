import 'package:flutter/material.dart';
import 'package:pmat/responsive.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pmat/navbar.dart';
import 'package:pmat/menu_drawer.dart';
import 'package:go_router/go_router.dart';
import 'package:pmat/footer.dart';

class Partnerships extends StatefulWidget {
  const Partnerships({super.key});

  @override
  State<Partnerships> createState() => _PartnershipsState();
}

class _PartnershipsState extends State<Partnerships> {
  @override
  Widget build(BuildContext context) {
    List<String> first = [
      "1.ชื่อของห้างหุ้นส่วน",
      "2. วัตถุที่ประสงค์ของห้าง",
      "3. ที่ตั้งสำนักงานแห่งใหญ่และ/หรือสาขา",
      "4. ชื่อ ที่อยู่ อายุ สัญชาติ และสิ่งที่นำมาลงหุ้น",
      "5. ชื่อผู้เป็นหุ้นส่วนผู้จัดการ (ต้องเป็นหุ้นส่วนไม่จำกัดความรับผิด) กรณีเป็นห้างหุ้นส่วนสามัญนิติบุคคล ผู้เป็นหุ้นส่วนสามารถเข้าเป็นหุ้นส่วนผู้จัดการได้ ทุกคน",
      "6. ข้อจำกัดอำนาจหุ้นส่วนผู้จัดการ (ถ้ามี)",
      "7. ตราสำคัญของห้าง",
      "8. รายการอื่นๆที่เห็นสมควรให้ประชาชนทราบ (ถ้ามี)"
    ];

    var fullFirst = Container(
      // width: Responsive.isDesktop(context)
      //     ? 900
      //     : Responsive.isTablet(context)
      //         ? 680
      //         : 360,
      // height: Responsive.isMobile(context) ? 580 : 450,
      // color: Colors.amber,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: first.length,
        itemBuilder: (context, index) {
          return ListTile(
            dense: true,
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

    List<String> list = [
      "1. คำขอจดทะเบียนห้างหุ้นส่วน (แบบ หส.1)",
      "2. แบบคำรับรองการจดทะเบียนห้างหุ้นส่วน",
      "3. รายการจดทะเบียน (แบบ หส.2) /ห้างหุ้นส่วนสามัญนิติบุคคล ใช้เฉพาะหน้า 1 และ 3",
      "4. วัตถุที่ประสงค์ (แบบ ว.)",
      "5. แบบ สสช.1 จำนวน 1 ฉบับ",
      "6. แบบจองชื่อนิติบุคคลที่ยังไม่เกินกำหนด",
      "7. แผนที่แสดงที่ตั้งสำนักงานใหญ่และสถานที่สำคัญบริเวณใกล้เคียงโดยสังเขป",
      "8. สำเนาหลักฐานการรับชำระเงินลงหุ้นที่ห้างหุ้นส่วนได้ออกให้แก่ผู้เป็นหุ้นส่วน",
      "9. กรณีห้างหุ้นส่วนมีผู้เป็นหุ้นส่วนเป็นคนต่างด้าวลงหุ้นในห้างหุ้นส่วนไม่ถึงร้อยละ50 ของเงินลงหุ้น ให้ส่งเอกสารหลักฐานที่ธนาคารออกให้ เพื่อรับรองหรือแสดงฐานะการเงิน ของผู้เป็นหุ้นสวนที่มีสัญชาติไทยแต่ละรายประกอบคำขอจดทะเบียน โดยเอกสารดังกล่าวต้องแสดงจำนวนเงินที่สอดคล้องกับจำนวนเงินที่นำมาลงหุ้นของผู้เป็นหุ้นส่วนแต่ละราย",
      "10. สำเนาบัตรประจำตัวประชาชนของผู้เป็นหุ้นส่วนทุกคน",
      "11. สำเนาหลักฐานการเป็นผู้รับรองลายมือชื่อ (ถ้ามี)"
    ];
    var fullList = Container(
      // width: Responsive.isDesktop(context)
      //     ? 900
      //     : Responsive.isTablet(context)
      //         ? 680
      //         : 360,
      // height: Responsive.isMobile(context) ? 580 : 450,
      // color: Colors.amber,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: list.length,
        itemBuilder: (context, index) {
          return ListTile(
            dense: true,
            title: Text(
              list[index],
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
                                ? 40
                                : Responsive.isTablet(context)
                                    ? 35
                                    : 30,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 13, 26, 121),
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              "จดทะเบียนห้างหุ้นส่วน",
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
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 25, bottom: 30),
                          child: Container(
                              width: Responsive.isDesktop(context)
                                  ? 800
                                  : Responsive.isTablet(context)
                                      ? 600
                                      : 300,
                              child: Image.asset(
                                "assets/detail/work4.jpg",
                                fit: BoxFit.fitWidth,
                              )),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: Responsive.isDesktop(context)
                                ? const EdgeInsets.only(left: 40)
                                : Responsive.isTablet(context)
                                    ? const EdgeInsets.only(left: 40)
                                    : const EdgeInsets.only(left: 20),
                            child: Text(
                              "การจัดตั้งห้างหุ้นส่วนจำกัดแบ่งออกได้ 4 ขั้นตอน ดังนี้",
                              style: GoogleFonts.sarabun(
                                  fontSize: Responsive.isDesktop(context)
                                      ? 25
                                      : Responsive.isTablet(context)
                                          ? 20
                                          : 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: Responsive.isDesktop(context)
                                ? const EdgeInsets.only(left: 40, top: 10)
                                : Responsive.isTablet(context)
                                    ? const EdgeInsets.only(left: 40, top: 10)
                                    : const EdgeInsets.only(left: 20, top: 10),
                            child: Text(
                              "ขั้นตอนที่1 ทำความตกลงระหว่างผู้เป็นหุ้นส่วนในเรื่องสำคัญๆ",
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
                                ? const EdgeInsets.only(left: 50, top: 10)
                                : Responsive.isTablet(context)
                                    ? const EdgeInsets.only(left: 50, top: 10)
                                    : const EdgeInsets.only(left: 30, top: 10),
                            child: Text(
                              "ห้างหุ้นส่วนจำกัดเป็นรูปแบบการประกอบกิจการค้าที่มีคนหลายคนเข้ามาเกี่ยวข้อง ดังนั้นเพื่อป้องกันปัญหาความขัดแย้งที่อาจเกิดขั้น ในระหว่างประกอบการค้า ผู้เป็นหุ้นส่วนทุกคนจึงควรทำความตกลงกันในเรื่องสำคัญๆ ดังต่อไปนี้ไว้ก่อนให้ชัดเจน",
                              style: GoogleFonts.sarabun(
                                  fontSize: Responsive.isDesktop(context)
                                      ? 18
                                      : Responsive.isTablet(context)
                                          ? 15
                                          : 13,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: Responsive.isDesktop(context)
                                ? const EdgeInsets.only(left: 70, top: 20)
                                : Responsive.isTablet(context)
                                    ? const EdgeInsets.only(left: 70, top: 20)
                                    : const EdgeInsets.only(left: 50, top: 20),
                            child: Text(
                              "1. จำนวนเงินลงทุนหรือสิ่งที่ผู้เป็นหุ้นส่วนแต่ละคนจะนำมาลงทุน โดยผู้เป็นหุ้นส่วน สามารถลงทุนด้วยเงิน ทรัพย์สิน หรือแรงงานก็ได้(ยกเว้นหุ้นส่วนจำกัดความรับผิดจะลงทุนด้วยแรงงานไมไ่ด้) แต่การลงทุนด้วยทรัพย์สินหรือแรงงาน ต้องตีราคาเป็นจำนวนเงินและกำหนดระยะเวลาชำระเงินหรือสิ่งที่ผู้เป็นหุ้นส่วน จะนำมาลงทุน ซึ่งควรชำระให้ครบก่อนการจดทะเบียนจัดตั้งห้างหุ้นส่วน",
                              style: GoogleFonts.sarabun(
                                  fontSize: Responsive.isDesktop(context)
                                      ? 18
                                      : Responsive.isTablet(context)
                                          ? 15
                                          : 13,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: Responsive.isDesktop(context)
                                ? const EdgeInsets.only(left: 70, top: 20)
                                : Responsive.isTablet(context)
                                    ? const EdgeInsets.only(left: 70, top: 20)
                                    : const EdgeInsets.only(left: 50, top: 20),
                            child: Text(
                              '2. กำหนดขอบเขตหรือกรอบของกิจการค้าที่ห้างหุ้นส่วนจำกัดจะประกอบกิจการ หรือที่เรียกว่า "วัตถุที่ประสงค์" ในปัจจุบันส่วนมากจะกำหนดวัตถุประสงค์ไว้หลายๆกิจการ เพื่อความคล่องตัวในการเพิ่มหรือปรับเปลี่ยนกิจการค้า จะได้ไม่ต้องเสียเวลาในการดำเนินการจดทะเบียนเเพิ่มหรือเปลี่ยนวัตถุประสงค์ แต่การจดทะเบียนวัตถุประสงค์ไว้เป็นหลายๆกิจการ นั้นอาจไม่เป็นผลดี เนื่องจากเป็นการเปิดโอกาสให้ผู้บริหารประกอบกิจการค้าที่ไม่เป็นไปตามแนวทางที่ตนถนัดและให้อำนาจกว้างขวางมากเกินไป',
                              style: GoogleFonts.sarabun(
                                  fontSize: Responsive.isDesktop(context)
                                      ? 18
                                      : Responsive.isTablet(context)
                                          ? 15
                                          : 13,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: Responsive.isDesktop(context)
                                ? const EdgeInsets.only(left: 70, top: 20)
                                : Responsive.isTablet(context)
                                    ? const EdgeInsets.only(left: 70, top: 20)
                                    : const EdgeInsets.only(left: 50, top: 20),
                            child: Text(
                              "3. แต่งตั้งหุ้นส่วนผู้จัดการ(หุ้นส่วนผู้จัดการคือ ผู้ที่จะมีอำนาจกระทำการแทนห้างหุ้นส่วนจำกัด ซึ่งต้องแต่งตั้งจากหุ้นส่วนจำพวกไม่จำกัดความรับผิดชอบเท่านั้น)",
                              style: GoogleFonts.sarabun(
                                  fontSize: Responsive.isDesktop(context)
                                      ? 18
                                      : Responsive.isTablet(context)
                                          ? 15
                                          : 13,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: Responsive.isDesktop(context)
                                ? const EdgeInsets.only(left: 70, top: 20)
                                : Responsive.isTablet(context)
                                    ? const EdgeInsets.only(left: 70, top: 20)
                                    : const EdgeInsets.only(left: 50, top: 20),
                            child: Text(
                              "4. การแบ่งส่วนกำไรและขาดทุน",
                              style: GoogleFonts.sarabun(
                                  fontSize: Responsive.isDesktop(context)
                                      ? 18
                                      : Responsive.isTablet(context)
                                          ? 15
                                          : 13,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: Responsive.isDesktop(context)
                                ? const EdgeInsets.only(left: 70, top: 20)
                                : Responsive.isTablet(context)
                                    ? const EdgeInsets.only(left: 70, top: 20)
                                    : const EdgeInsets.only(left: 50, top: 20),
                            child: Text(
                              "5. เรื่องอื่นๆเช่น หลักเกณฑ์และวิธีการเปลี่ยนแปลงข้อสัญญาจัดตั้งห้างเดิม สถานที่ที่จะใช้เป็นที่ตั้งสำนักงานใหญ่ ข้อจำกัดในการใช้อำนาจของหุ้นส่วนผู้จัดการและการตั้งผู้ชำระบัญชี เป็นต้น",
                              style: GoogleFonts.sarabun(
                                  fontSize: Responsive.isDesktop(context)
                                      ? 18
                                      : Responsive.isTablet(context)
                                          ? 15
                                          : 13,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: Responsive.isDesktop(context)
                                ? const EdgeInsets.only(left: 40, top: 10)
                                : Responsive.isTablet(context)
                                    ? const EdgeInsets.only(left: 40, top: 10)
                                    : const EdgeInsets.only(left: 20, top: 10),
                            child: Text(
                              "ขั้นตอนที่2 ขอตรวจสอบและจองชื่อห้างหุ้นส่วนจำกัด",
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
                                ? const EdgeInsets.only(left: 70, top: 20)
                                : Responsive.isTablet(context)
                                    ? const EdgeInsets.only(left: 70, top: 20)
                                    : const EdgeInsets.only(left: 50, top: 20),
                            child: Text(
                              "ในปัจจุบันมีการประกอบกิจการในรูปแบบของห้างหุ้นส่วนสามัญนิติบุคคล ห้างหุ้นส่วนจำกัด บริษัทจำกัด และบริษัทมหาชนจำกัดเป็นจำนวนมาก ดังนั้นเพื่อมิให้เกิดความสับสนเกี่ยวกับชื่อที่คล้ายหรือซ้ำกัน ให้ผู้ที่ประสงค์จะจดทะเบียนจัดตั้งห้างหุ้นส่วนขึ้นใหม่ตรวจสอบชื่อที่ต้องการจอง ว่า ชื่อดังกล่าว ต้องไม่เหมือนหรือมีเสียงเรียกขานตรงกัน หรือเสียงคล้ายคลึงกันกับชื่อที่ได้จองหรือได้จดทะเบียนไว้ก่อนแล้ว หรือขัดระเบียบสำนักงานทะเบียนหุ้นส่วน บริษัทกลางว่าด้วยการจดทะเบียน ห้างหุ้นส่วนบริษัท(ฉบับที่5) พ.ศ.2555 ข้อ 38(1)-(11) ด้วยตนเองและนำใบแจ้งผลการจองชื่อไปประกอบการขอจดทะเบียนต่อไป",
                              style: GoogleFonts.sarabun(
                                  fontSize: Responsive.isDesktop(context)
                                      ? 18
                                      : Responsive.isTablet(context)
                                          ? 15
                                          : 13,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: Responsive.isDesktop(context)
                                ? const EdgeInsets.only(left: 40, top: 10)
                                : Responsive.isTablet(context)
                                    ? const EdgeInsets.only(left: 40, top: 10)
                                    : const EdgeInsets.only(left: 20, top: 10),
                            child: Text(
                              "ขั้นตอนที่3 จัดทำคำขอจดทะเบียนและเอกสารประกอบ",
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
                                ? const EdgeInsets.only(left: 70, top: 20)
                                : Responsive.isTablet(context)
                                    ? const EdgeInsets.only(left: 70, top: 20)
                                    : const EdgeInsets.only(left: 50, top: 20),
                            child: Text(
                              "เมื่อได้จองชื่อแล้ว ให้ผู้ขอจดทะเบียนต้องจัดทำตราสำคัญของห้างหุ้นส่วน กรอกรายละเอียด (โดยวิธีการพิมพ์ด้วยเครื่องพิมพ์ดีดหรือคอมพิวเตอร์) ในแบบพิมพ์คำขอจดทะเบียนให้ครบถ้วน ถูกต้องตรงตามความเป็นจริงในแบบพิมพ์คำขอจดทะเบียน",
                              style: GoogleFonts.sarabun(
                                  fontSize: Responsive.isDesktop(context)
                                      ? 18
                                      : Responsive.isTablet(context)
                                          ? 15
                                          : 13,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: Responsive.isDesktop(context)
                                ? const EdgeInsets.only(left: 40, top: 10)
                                : Responsive.isTablet(context)
                                    ? const EdgeInsets.only(left: 40, top: 10)
                                    : const EdgeInsets.only(left: 20, top: 10),
                            child: Text(
                              "ขั้นตอนที่ 4 การยื่นขอจดทะเบียน",
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
                                ? const EdgeInsets.only(left: 40, top: 10)
                                : Responsive.isTablet(context)
                                    ? const EdgeInsets.only(left: 40, top: 10)
                                    : const EdgeInsets.only(left: 20, top: 10),
                            child: Text(
                              "การยื่นขอจดทะเบียนทำได้ 2 วิธี",
                              style: GoogleFonts.sarabun(
                                  fontSize: Responsive.isDesktop(context)
                                      ? 18
                                      : Responsive.isTablet(context)
                                          ? 15
                                          : 13,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: Responsive.isDesktop(context)
                                ? const EdgeInsets.only(left: 70, top: 20)
                                : Responsive.isTablet(context)
                                    ? const EdgeInsets.only(left: 70, top: 20)
                                    : const EdgeInsets.only(left: 50, top: 20),
                            child: Text(
                              "1. ยื่นคำขอจดทะเบียนพร้อมเอกสารประกอบต่อนายทะเบียน กรณีนี้หุ้นส่วนผู้จัดการจะไปยื่นขอจดทะเบียนด้วยตนเอง หรือมอบอำนาจให้ผู้อื่นไปดำเนินการแทนก็ได้",
                              style: GoogleFonts.sarabun(
                                  fontSize: Responsive.isDesktop(context)
                                      ? 18
                                      : Responsive.isTablet(context)
                                          ? 15
                                          : 13,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: Responsive.isDesktop(context)
                                ? const EdgeInsets.only(left: 70, top: 20)
                                : Responsive.isTablet(context)
                                    ? const EdgeInsets.only(left: 70, top: 20)
                                    : const EdgeInsets.only(left: 50, top: 20),
                            child: Text(
                              "2. ยื่นขอจดทะเบียนทางอินเทอร์เน็ตที่ www.dbd.go.th เพื่อให้นายทะเบียนตรวจพิจารณาคำขอจดทะเบียนก่อน และเมื่อผ่านการตรวจและตอบรับว่าคำขอจดทะเบียนถูกต้องแล้วให้ผู้ขอ จดทะเบียนพิมพ์(print out) เอกสารคำขอจดทะเบียนดังกล่าวให้ผู้เป็นหุ้นส่วนลงลายมือชื่อและประทับตราสำคัญของห้างหุ้นส่วนหลั จากนั้นก็นำไปยื่นขอจดทะเบียนตามข้อ 1. เนื่องจากนายทะเบียนจะตรวจเอกสารคำขอจดทะเบียนที่นำมายื่นนั้นว่ามีข้อความถูกต้องตรงกับที่ยื่นไว้ทางอินเทอร์เน็ตหรือไม่เท่านั้น",
                              style: GoogleFonts.sarabun(
                                  fontSize: Responsive.isDesktop(context)
                                      ? 18
                                      : Responsive.isTablet(context)
                                          ? 15
                                          : 13,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: Responsive.isDesktop(context)
                                ? const EdgeInsets.only(left: 40, top: 10)
                                : Responsive.isTablet(context)
                                    ? const EdgeInsets.only(left: 40, top: 10)
                                    : const EdgeInsets.only(left: 20, top: 10),
                            child: Text(
                              "ข้อมูลที่ใช้",
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
                                  ? const EdgeInsets.only(left: 70, top: 20)
                                  : Responsive.isTablet(context)
                                      ? const EdgeInsets.only(left: 70, top: 20)
                                      : const EdgeInsets.only(
                                          left: 50, top: 20),
                              child: fullFirst),
                          Padding(
                            padding: Responsive.isDesktop(context)
                                ? const EdgeInsets.only(left: 40, top: 10)
                                : Responsive.isTablet(context)
                                    ? const EdgeInsets.only(left: 40, top: 10)
                                    : const EdgeInsets.only(left: 20, top: 10),
                            child: Text(
                              "เอกสารและหลักฐานที่ต้องใช้ในการจดทะเบียน",
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
                                ? const EdgeInsets.only(left: 70, top: 20)
                                : Responsive.isTablet(context)
                                    ? const EdgeInsets.only(left: 70, top: 20)
                                    : const EdgeInsets.only(left: 50, top: 20),
                            child: Text(
                              "ในการขอจดทะเบียนต้องเตรียมเอกสารหลักฐานดังต่อไปนี้",
                              style: GoogleFonts.sarabun(
                                  fontSize: Responsive.isDesktop(context)
                                      ? 18
                                      : Responsive.isTablet(context)
                                          ? 15
                                          : 13,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: Responsive.isDesktop(context)
                                ? const EdgeInsets.only(left: 70, top: 20)
                                : Responsive.isTablet(context)
                                    ? const EdgeInsets.only(left: 70, top: 20)
                                    : const EdgeInsets.only(left: 50, top: 20),
                            child: fullList,
                          )
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
