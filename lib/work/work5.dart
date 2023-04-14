import 'package:flutter/material.dart';
import 'package:pmat/responsive.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pmat/navbar.dart';
import 'package:pmat/menu_drawer.dart';
import 'package:go_router/go_router.dart';
import 'package:pmat/footer.dart';

class Established extends StatefulWidget {
  const Established({super.key});

  @override
  State<Established> createState() => _EstablishedState();
}

class _EstablishedState extends State<Established> {
  @override
  Widget build(BuildContext context) {
    List<String> first = [
      "1. ผู้เริ่มก่อการตั้งแต่ 3 คนขึ้นไป ร่วมกันจัดทำหนังสือบริคณห์สนธิ",
      "2. จัดให้มีผู้เข้าชื่อซื้อหุ้นครบตามจำนวนหุ้นทั้งหมดที่บริษัทจะจดทะเบียน",
      "3. ประชุมจัดตั้งบริษัท (โดยไม่ต้องออกหนังสือนัดประชุมตั้งบริษัท) เพื่อพิจารณากิจการต่างๆตามประมวลกฎหมายแพ่งและพาณิชย์ มาตรา 1108 โดยมีผู้เริ่มก่อการและผู้เข้าชื่อซื้อหุ้น ทุกคนเข้าร่วมประชุม (มอบฉันทะให้ผู้อื่นเข้าประชุมแทนได้) และผู้เริ่มก่อการและผู้เข้าซื้อหุ้นทุกคน ให้ความเห็นชอบในกิจการที่ได้ประชุมกันนั้น",
      "4. ผู้เริ่มก่อการได้มอบกิจการทั้งปวงห้แก่กรรมการบริษัท",
      "5. กรรมการได้เรียกให้ผู้เข้าชื่อซื้อหุ้น ใช้เงินค่าหุ้น โดยจะเรียกครั้งเดียวเต็มมูลค่าหรือไม่น้อยกว่าร้อยละยี่สิบห้้าของมูลค่าหุ้น ตามมาตรา 1110 วรรคสองก็ได้ และผู้เข้าชื่อซื้อหุ้นทุกคนได้ชำระเงินค่าหุ้นเสร็จเรียบร้อยแล้ว"
    ];

    var fullFirst = Container(
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

    List<String> second = [
      "1. คำขอจดทะเบียนบริษัทจำกัด (แบบ อจ.1)",
      "2. แบบคำรับรองการจดทะเบียนบริษัทจำกัด",
      "3. หนังสือบริคณห์สนธิ (แบบ บอจ.2) ผนึกอากรแสตมป์ 200 บาท",
      "4. รายการจดทะเบียนจัดตั้ง (แบบ บอจ.3)",
      "5. แบบวัตถุที่ประสงค์ (แบบ ว.)",
      "6. รายละเอียดกรรมการ (แบบ ก.)",
      "7. แบบแจ้งผลการจองชื่อนิติบุคคลที่ยังไม่ครบกำหนด",
      "8. หลักฐานให้ความเห็นชอบในการจัดตั้งบริษัทเพื่อประกอบธุรกิจจากหน่วยงานที่เกี่ยวข้อง (ใช้เฉพาะในการประกอบธุรกิจที่มีกฎหมายพิเศษควบคุม เช่น ธุรกิจธนาคาร ธุรกิจประกันภัย ธุรกิจเงินทุน ธุรกิจหลักทรัพย์ ธุรกิจเครดิตฟองซิเอร์ กิจการข้อมูลเครดิต บริหารสินทรัพย์ กิจการคลังการค้า กิจการไซโลหรือกิจการห้องเย็น)",
      "9. บัญชีรายชื่อผู้ถือหุ้น (แบบ บอต.5)",
      "10. สำเนาบัญชีรายชื่อผู้เข้าชื่อซื้อหุ้นหรือผู้รับมอบฉันทะในการประชุมให้ควาเมห็นชอบในกิจการที่ได้ประชุมจัดตั้งบริษัทพร้อมลายมือชื่อ",
      "11. สำเนารายงานการประชุมตั้งบริษัท",
      "12. สำเนาข้อบังคับ ผนึกอากร 200 บาท(ถ้ามี)",
      "13. สำเนาหลักฐานการรับชำระค่าหุ้นที่บริษัทออกให้แก่ผู้ถือหุ้น",
      "14. กรณีบริษัทจำกัดมีผู้ถือหุ้นเป็นคนต่างด้าวถทอหุ้นในบริษัทจำกัดไม่ถึงร้อยละ 50 ของทุนจดทะเบียน หรือกรณีบริษัทจำกัดไม่มีคำต่างด้าวเป็นผู้ถือหุ้น แต่คนต่างด้าวเป็นกรรมการผู้มีอำนาจลงนามหรือร่วมลงนามผู้พันบริษัท ให้ส่งเอกสารหลักฐานที่ธนาคารออกให้ เพื่อรับรองหรือแสดงฐานะการเงินของผู้ถือหุ้นที่มีสัญชาติไทยแต่ละรายประกอบคำขอจดทะเบียน โดยเอกสารดังกล่าวต้องแสดงจำนวนเงินที่สอดคล้องกับจำนวนเงินที่นำมาลงหุ้นของผู้เป็นหุ้นส่วนแต่ละราย",
      "15. แบบ สสช.1 จำนวน 1 ฉบับ",
      "16. แผนที่แสดงที่ตั้งสำนักงานใหญ่และสถานที่สำคัญบริเวณใกล้เคียงโดยสังเขป",
      "17. สำเนาบัตรประจำตัวของผู้เริ่มก่อการและกรรมการทุกคน",
      "18. สำเนาหลักฐานการเป็นผู้รับรองลายมือชื่อ (ถ้ามี)",
      "19. หนังสือมอบอำนาจ (กรณีที่ผู้ขอจดทะเบียนไม่สามารถยื่นขอจดทะเบียนได้ด้วยตนเองก็มอบอำนาจให้บุคคลอื่นดำเนินการแทนโดยทำหนังสือมอบอำนาจและผนึกอากรแสตมป์ด้วย"
    ];

    var fullSecond = Container(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: second.length,
        itemBuilder: (context, index) {
          return ListTile(
            dense: true,
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
                                "จดทะเบียนจัดตั้งบริษัท",
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
                                "assets/detail/work5.jpg",
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
                              "จะดำเนินการจดทะเบียนจัดตั้งบริษัทจำกัดภายในหนึ่งวันได้อย่างไร",
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
                                ? const EdgeInsets.only(left: 50, top: 10)
                                : Responsive.isTablet(context)
                                    ? const EdgeInsets.only(left: 50, top: 10)
                                    : const EdgeInsets.only(left: 30, top: 10),
                            child: Text(
                              "ในการจัดตั้งบริษัท ถ้าได้ดำนินการทุกขั้นตอนดังต่อไปนี้ ภายในวันเดียวกับวันที่ผู้เริ่มก่อการจัดทำหนังสือบริคณห์สนธิ กรรมการจะจดทะเบียนหนังสือ และจดทะเบียนจัดตั้งบริษัทไปพร้อมกันภายในวันเดียวได้",
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
                            child:fullFirst
                          ),
                          Padding(
                            padding: Responsive.isDesktop(context)
                                ? const EdgeInsets.only(left: 40, top: 10)
                                : Responsive.isTablet(context)
                                    ? const EdgeInsets.only(left: 40, top: 10)
                                    : const EdgeInsets.only(left: 20, top: 10),
                            child: Text(
                              "เอกสารหลักฐานที่ต้องใช้ในการจดทะเบียนจัดตั้งบริษัท",
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
                            child:fullSecond
                          ),
                          Padding(
                            padding: Responsive.isDesktop(context)
                                ? const EdgeInsets.only(left: 50, top: 10)
                                : Responsive.isTablet(context)
                                    ? const EdgeInsets.only(left: 50, top: 10)
                                    : const EdgeInsets.only(left: 30, top: 10),
                            child: Text(
                              "สำเนาเอกสารประกอบคำขอจดทะเบียนทุกฉบับ ต้องให้ผู้ขอจดทะเบียนอย่างน้อยหนึ่งคนรับรอง ความถูกต้อง ยกเว้นสำเนาบัตรประจำตัวหรือผู้รับรองลายมือชื่อผู้ขอจดทะเบียน ให้ผู้เป็นเจ้าของบัตรหรือผู้ขอจดทะเบียนอย่างน้อย หนึ่งคนเป็นผู้ลงลายมือชื่อรับรองความถูกต้อง",
                              style: GoogleFonts.sarabun(
                                  fontSize: Responsive.isDesktop(context)
                                      ? 18
                                      : Responsive.isTablet(context)
                                          ? 15
                                          : 13,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 33, 209, 124)),
                            ),
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
