import 'dart:html';

import 'package:flutter/material.dart';
import 'package:pmat/responsive.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pmat/navbar.dart';
import 'package:pmat/menu_drawer.dart';
import 'package:go_router/go_router.dart';
import 'package:pmat/footer.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
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
                          "งานขอ Visa&Work permit",
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
                      padding: const EdgeInsets.only(top: 25),
                      child: Container(
                        width: Responsive.isDesktop(context)
                            ? 1440
                            : Responsive.isTablet(context)
                                ? 768
                                : 375,
                        child: Text(
                          "ใบอนุญาติทำงาน หรือ work permit หมายถึง ชาวต่างชาติที่ต้องเดินทางเข้ามาทำงานในประเทศไทย เพื่อประกอบธุรกิจ กิจการ หรือ ลูกจ้าง ทุกอาชีพนั้น จำเป็นต้องยื่นขอการเปลี่ยนประเภทการลงตราตามกฎหมายของราชอาณาจักรไทย ว่าด้วย ชาวต่างชาติที่เดินทางเข้ามาทำงานในประเทศไทยต้องยื่นขอการเปลี่ยนแปลงประเภทการลงตราเป็น Non-Immigrant Visa ''B'' หรือวีซ่าประเภทธุรกิจ และเมื่อทำการเปลี่ยนลงตราเรียยร้อยแล้วนั้น จำเป็นต้องยื่นขอใบอนุญาติทำงาน หรือ work permit มิฉะนั้นจะไม่สามารถทำงานในราชอาณาจักรไทยได้\n\nเมื่อชาวต่างชาติที่ดำเนินการขอวีซ่า Non-Immigrant Visa ''B'' มาแล้วแต่ยังไม่ได้ยื่นขอใบอนุญาติทำงาน หรือ work Permit ท่านสามารถยื่นขอเองได้ทีกรมจัดหางานกระทรวงแรงงานภายในระยะเวลา 90 วัน หลังจากที่ท่านได้เดินถึงประเทศไทยแล้ว ตามกฎหมายที่ให้พำนักอยู่ได้ในราชอาณาจักรได้เป็นการชั่วคราว\n\nการขออนุญาตทำงานครั้งแรก หรือเมื่อใบอณุญาตเดิมขาดหมดอายุจึงขอใหม่ คุณสมบัติของคนต่างด้าวที่จะขอใบอนุญาตทำงาน",
                          style: GoogleFonts.sarabun(
                              fontSize: 16, color: Colors.black),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, bottom: 15),
                      child: Container(
                        width: Responsive.isDesktop(context)
                            ? 1440
                            : Responsive.isTablet(context)
                                ? 768
                                : 375,
                        child: Text.rich(TextSpan(children: [
                          TextSpan(
                            text:
                                '\u2022 คนต่างด้าวที่มีถิ่นที่อยู่ราชอาณาจักรหรือได้รับอนุญาตให้เข้ามาในราชอาณาจักรเป็นการชั่วคราวตามกฎหมายว่าด้วยคนเข้าเมือง(NON-IMMIGRANT)โดยมิใช่ได้รับอนุญาตให้เข้ามาในฐานะนักท่องเที่ยวหรือผู้เดินทางผ่าน ( TOURIST/TRANSIT )ซึ่งจะอนุญาตทำงานในครั้งแรก หรือเมื่อใบอนุญาตเดิมขาดต่ออายุจึงขอใหม่\n\n',
                            style: GoogleFonts.sarabun(
                                fontSize: 16, color: Colors.black),
                          ),
                          TextSpan(
                            text:
                                '\u2022 มีความรู้และความสามารถในการทำงานตามที่ขออนุญาต\n\n',
                            style: GoogleFonts.sarabun(
                                fontSize: 16, color: Colors.black),
                          ),
                          TextSpan(
                            text:
                                '\u2022 ไม่เป็นบุคลวิกลจริตหรือมีจิตฟั้นเฟือนไม่สมประกอบ ไม่เป็นผู้เจ็บป่วยด้วยโรคเรื้อน วัณโรคในระยะสุดท้าย โรคเท้าช้างในระยะปรากฏอาการอันเป็นที่รังเกียจแก่สังคม โรคติดยาเสพติดให้โทษอย่างร้ายแรง โรคพิษสุราเรื้อรัง และโรคซิฟิลิสในระยะที่ 3\n\n',
                            style: GoogleFonts.sarabun(
                                fontSize: 16, color: Colors.black),
                          ),
                          TextSpan(
                            text:
                                '\u2022 ไม่เคยต้องโทษจำคุกในความผิดตามกฎหมายว่าด้วยคนเข้าเมือง หรือกฎหมายว่าด้วยการทำงานของคนต่างด้าวภายในระยะเวลา 1 ปี ก่อนวันขอรับใบอนุญาต',
                            style: GoogleFonts.sarabun(
                                fontSize: 16, color: Colors.black),
                          ),
                        ])),
                      ),
                    ),
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
                          "เอกสารสำหรับยื่นคำขอรับใบอนุญาตทำงาน (Work permit)",
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
                    Container(
                      width: Responsive.isDesktop(context)
                          ? 1440
                          : Responsive.isTablet(context)
                              ? 768
                              : 375,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15, bottom: 15),
                            child: Text(
                              "1. สถานประกอบการเอกชน",
                              style: GoogleFonts.sarabun(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Text(
                              "1. สำเนาหนังสือรับรองการจดทะเบียนนิติบุคลไทย และสำเนาบัญชีรายชื่อผู้ถือหุ้น (ไม่เกิน 6 เดือน ) หรือนิติบุคคลต่างด้าวให้ยื่นสำเนาใบอนุญาตประกอบธุรกิจของคนต่างด้าวออกตามพระราชบัญญัติประกอบธุรกิจของคนต่างด้าวพ.ศ. 2542 พร้อมนำหลักฐานการนำเงินจากต่างประเทศเข้ามาใช้จ่ายในประเทศ",
                              style: GoogleFonts.sarabun(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Text(
                              "2. สำเนาทะเบียนภาษีมูลค่าเพิ่ม ( ภ.พ.01 และ ภ.พ. 20 ) ที่ระบุประเภทกิจการ ภ.พ. 09 หากมีการเปลี่ยนแปลง",
                              style: GoogleFonts.sarabun(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Text(
                              "3. กรณีนายจ้างเป็นคนต่างด้าว ให้แนบสำเนาใบอนุญาตทำงานของนายจ้าง หากนายจ้างผู้นั้นไม่ได้ทำงานในประเทศไทย และไม่มีใบอนุญาตทำงานต้องให้ Notary Public และสถานทูตไทยรับรองการมอบอำนาจให้กรรมการหรือบุคคลใดบุคคลหนึ่งลงนามแทน",
                              style: GoogleFonts.sarabun(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Text(
                              "4. กรณีนายจ้างประกอบกิจการที่ต้องขออนุญาตตามกฎหมายอื่น หรือต้องมีหนังสืออนุญาตให้ดำเนินกิจการจากหน่วยงาน ของรัฐที่เกี่ยวข้อง เช่นหนังสืออนุญาตประกอบกิจการโรงงาน , หนังสืออนุญาตประกอบกิจการโรงแรม , ใบอนุญาตองค์กรอาหารและยา , ใบอนุญาตให้ประกอบธุรกิจนำเที่ยว , ใบอนุญาตให้ใช้สถานที่เป็น สถานที่จำหน่ายอาหาร ฯลฯ",
                              style: GoogleFonts.sarabun(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Text(
                              "5. บัญชีรายชื่อคนต่างด้าว พร้อมเลขที่ใบอนุญาตทำงาน อยู่ในสถานประกอบการ แผนภูมิการแบ่งงานและแผนที่ตั้งของสถานประกอบการ",
                              style: GoogleFonts.sarabun(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Text(
                              "6. สำเนาหลักฐานการจ่ายเงินประกันสังคมเดือนล่าสุด และสำเนาเอกสารรายได้ที่เป็นปัจจุบัน ได้แก่งบการเงิน และ ภงด.50 หรือ ภงด. 51(ปีล่าสุด) และ ภพ.30",
                              style: GoogleFonts.sarabun(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Text(
                              "7. รูปถ่ายสถานประกอบการ 4รูป ป้ายชื่อบริษัท 1รูป ด้านหน้าเห็นตัวอาคาร 1รูป ภายใน 2รูป (รูปถ่ายในโรงงาน 2รูป) ถ้ามี",
                              style: GoogleFonts.sarabun(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15, bottom: 15),
                            child: Text(
                              "2. หน่วยงานราชการ",
                              style: GoogleFonts.sarabun(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Text(
                              "1. สำเนาหนังสือแต่งตั้งครูหรือผู้สอน (ผู้ทำหน้าที่ด้านการเรียนการสอน) ปฏิบัติหน้าที่ พร้อมสัญญาจ้าง / มหาวิทยาลัยเอกชนให้แสดงหนังสือรับรองการหน่วยงานของกระทรวงศึกษาธิการ โดยระบุชื่อคนต่างด้าว ตำแหน่งและระยะเวลาการจ้าง",
                              style: GoogleFonts.sarabun(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Text(
                              "2. ใบอนุญาตประกอบวิชาชีพครู (ตามกฎหมายว่าด้วยสภาครูและบุคลากรทางการศึกษา) ยกเว้นตำแหน่งครูฝึกสอน หรือใบผ่อนผันใบอนุญาตประกอบวิชาชีพครู",
                              style: GoogleFonts.sarabun(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Text(
                              "3. สำเนาใบอนุญาตให้จัดตั้งโรงเรียน ใบอนุญาตให้เป็นครูใหญ่ และใบอนุญาตให้เป็นผู้จัดการ / ใบอนุญาตต่างๆ (ถ้ามี) / สำเนาใบจัดตั้งมหาวิทยาลัยและคำสั่งแต่งตั้งผู้มีอำนาจลงนามของมหาวิทยาลัย ",
                              style: GoogleFonts.sarabun(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Text(
                              "4. เอกสารแสดงวุฒิการศึกษา/ เอกสารแสดงผลการศึกษารายวิชา และเอกสารแสดงประสบการณ์การเป็นครู (ถ้ามี)",
                              style: GoogleFonts.sarabun(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15, bottom: 15),
                            child: Text(
                              "3. หน่วยงานราชการ",
                              style: GoogleFonts.sarabun(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Text(
                              "1. หนังสือรับรองจากส่วนราชการ / รัฐวิสาหกิจ / องค์การมหาชน / เขตการศึกษา (กรณีครูโรงเรียนรัฐบาล ) โดยระบุชื่อ ตำแหน่ง และระยะเวลาการจ้างงาน",
                              style: GoogleFonts.sarabun(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Text(
                              "2. กรณีครูโรงเรียนรัฐบาลให้แสดงใบประกอบวิชาชีพครู ( ตามกฎหมายว่าด้วยสภาครูและบุคลากรทางการศึกษา ) ยกเว้น ตำแหน่งครูฝึกสอน",
                              style: GoogleFonts.sarabun(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15, bottom: 15),
                            child: Text(
                              "4. มูลนิธิหรือสมาคม",
                              style: GoogleFonts.sarabun(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Text(
                              "1. กรณีครูโรงเรียนรัฐบาลให้แสดงใบประกอบวิชาชีพครู ( ตามกฎหมายว่าด้วยสภาครูและบุคลากรทางการศึกษา ) ยกเว้น ตำแหน่งครูฝึกสอน",
                              style: GoogleFonts.sarabun(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15, bottom: 15),
                            child: Text(
                              "5. กิจการถ่ายหรือทำภาพยนตร์จากต่างประเทศ",
                              style: GoogleFonts.sarabun(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Text(
                              "1. หนังสือรับรองจากสำนักพัฒนาการท่องเที่ยว ใบอนุญาตเป็นผู้ประสานงาน พร้อมรายชื่อ – ตำแหน่งงาน และเลขที่หนังสือเดินทางของคนต่างด้าว",
                              style: GoogleFonts.sarabun(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30,bottom:15),
                            child: Text(
                              "2. หนังสือรับรองจากสำนักพัฒนาการท่องเที่ยว ใบอนุญาตเป็นผู้ประสานงาน พร้อมรายชื่อ – ตำแหน่งงาน และเลขที่หนังสือเดินทางของคนต่างด้าว",
                              style: GoogleFonts.sarabun(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                          Text("หมายเหตุ",style: GoogleFonts.sarabun(
                            fontSize:16,
                            decoration: TextDecoration.underline,
                            color: Colors.black

                          ),),
                          Text("1. เอกสารที่เป็นภาษาต่างประเทศ ยกเว้นภาษาอังกฤษ ให้จัดทำคำแปลเป็นภาษาไทยที่มีการรับรองความถูกต้อง",style: GoogleFonts.sarabun(
                            fontSize:16,
                            color: Colors.black

                          ),),
                          Text("2. สำเนาเอกสารทุกฉบับต้องลงลายมือชื่อรับรอง ดังนี้",style: GoogleFonts.sarabun(
                            fontSize:16,
                            color: Colors.black

                          ),),

                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Text("- เอกสารของนายจ้าง ให้ผู้มีอำนาจลงนามผูกพันลงลายมือชื่อและประทับตราบริษัท (ถ้ามี) หรือผู้รับมอบอำนาจ ",style: GoogleFonts.sarabun(
                              fontSize:16,
                              color: Colors.black

                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Text("- เอกสารของสารต่างด้าวให้คนต่างด้าวลงลายมือชื่อ หรือผู้รับมอบอำนาจ",style: GoogleFonts.sarabun(
                              fontSize:16,
                              color: Colors.black

                            ),),
                          )
                        ],
                      ),
                    ),
                    Container(
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
                    Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: Footer(),
                    )
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
