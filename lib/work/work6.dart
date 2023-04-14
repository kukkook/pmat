import 'package:flutter/material.dart';
import 'package:pmat/responsive.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pmat/navbar.dart';
import 'package:pmat/menu_drawer.dart';
import 'package:go_router/go_router.dart';
import 'package:pmat/footer.dart';

class Setupsystem extends StatefulWidget {
  const Setupsystem({super.key});

  @override
  State<Setupsystem> createState() => _SetupsystemState();
}

class _SetupsystemState extends State<Setupsystem> {
  @override
  Widget build(BuildContext context) {
    List<String> first = [
      "สำรวจ วางแผนและวิเคราะห์งาน โครงสร้างเดิมทั้งหมด",
      "จัดเตรียมความพร้อมพนักงานและกำหนดหน้าที่รับผิดชอบ",
      "การบันทึกข้อมูล",
      "การจัดเก็บสำรองข้อมูล",
      "ประเมินการทำงาน-ทดสอบและติดตามปัญหาที่อาจจะเกิดขึ้นภายหลังจากที่ได้ปรับปรุงโครงสร้าง",
      "เงื่อนไขการชำระเงิน"
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
      "บัญชีแยกประเภทเจ้าหนี้ ใช้บันทึกยอดเงินยังคงค้างชำระผู้ขายหรือเจ้าหนี้รายอื่น ๆ (ควรมีรายละเอียดเจ้าหนี้ทุกราย)",
      "บัญชีเงินเดือน ใช้บันทึกค่าจ้างเงินเดือนของลูกจ้างพนักงาน และรายการหักภาษี ณ ที่จ่ายตลอดจนรายการที่จ่ายเข้ากองทุนประกันสังคม",
      "บัญชีสินทรัพย์ถาวรของธุรกิจ ใช้บันทึกราคาต้นทุนที่ซื้อสินทรัพย์เหล่านั้นมา และแสดงค่าเสื่อมราคาสะสมของสินทรัพย์แต่ละรายการ",
      'การวางระบบการบันทึกข้อมูล หรือ วางระบบบัญชี ของสำนักงานบัญชี จำเป็นต่อธุรกิจ แม้ธุรกิจขนาดย่อมอาจมีผู้ประกอบการเพียงคนเดียวที่ดำเนินกิจกรรมต่าง ๆ ทั้งหมด หรือจำนวนเงินที่หมุนเวียนในการค้าเป็นจำนวนไม่มากนัก แต่การบันทึกของสำนักงานบัญชีโดยมี ระบบบัญชี ที่ดีจะคอยควบคุมและแสดงสถานภาพทางการเงิน ตลอดจนไว้วิเคราะห์สมรรถนะการดำเนินงานของธุรกิจได้เป็นอย่างดีสมกับคำที่กล่าวว่า " บัญชีคือภาษาธุรกิจ"',
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
                                "วางระบบบัญชี",
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
                          SizedBox(height: 15,),
                          Padding(
                            padding: Responsive.isDesktop(context)
                                ? const EdgeInsets.only(left: 40)
                                : Responsive.isTablet(context)
                                    ? const EdgeInsets.only(left: 40)
                                    : const EdgeInsets.only(left: 20),
                            child: Text(
                              "บริการวางระบบและดูแล งานซื้อ-ขาย-งานผลิต ทางด้านขั้นตอนและทิศทางการเดินเอกสารภายใน ด้วยโปรแกรมบัญชีสำเร็จรูป",
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
                                ? const EdgeInsets.only(left: 50, top: 10)
                                : Responsive.isTablet(context)
                                    ? const EdgeInsets.only(left: 50, top: 10)
                                    : const EdgeInsets.only(left: 30, top: 10),
                            child: Text(
                              "ขั้นตอนการทำงานของการวางระบบบัญชี",
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
                                ? const EdgeInsets.only(left: 70, top:10)
                                : Responsive.isTablet(context)
                                    ? const EdgeInsets.only(left: 70, top: 10)
                                    : const EdgeInsets.only(left: 50, top: 10),
                            child:fullFirst
                          ),
                          Padding(
                            padding: Responsive.isDesktop(context)
                                ? const EdgeInsets.only(left: 50)
                                : Responsive.isTablet(context)
                                    ? const EdgeInsets.only(left: 50)
                                    : const EdgeInsets.only(left: 30),
                            child: Text(
                              "จนกว่าจะวางระบบตามเป้าหมายเรียบร้อย แต่ทั้งนี้ขึ้นอยู่กับความร่วมมือของบุคคลากรในหน่วยงานเป็นสำคัญ",
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
                              "สำนักงานบัญชีสามารถเปรียบเทียบข้อมูลในอดีตกับปัจจุบันได้ง่ายและรวดเร็ว เพื่อประโยชน์ในการจัดทำงบประมาณค่าใช้จ่ายต่าง ๆ\nสำนักงานบัญชีสามารถใช้ควบคุมและป้องกันการรั่วไหล การใช้เงินมากเกินความจำเป็น รวมทั้งการลักขโมย และการปฏิบัติของพนักงานที่ผิดพลาด",
                              style: GoogleFonts.sarabun(
                                fontStyle: FontStyle.italic,
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
                            child:fullSecond
                          ),
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
