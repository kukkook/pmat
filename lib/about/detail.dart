import 'package:flutter/material.dart';
import 'package:pmat/responsive.dart';
import 'package:google_fonts/google_fonts.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  List<String> panta = [
    "บริษัทฯ จะให้บริการการจัดทำและปรึกษาทางด้านบัญชี ภาษีอากร และกฎหมาย แก่ลูกค้าด้วยความรับผิดชอบ รวดเร็ว ตรงเวลาและถูกต้องที่สุด",
    "บริษัทฯ มุ่งเน้นในการพัฒนาการให้บริการ และนำเทคโนโลยีสมัยใหม่มาใช้ให้เกิดประโยชน์",
    "บริษัทฯ จะมุ่งสร้างแบรนด์ เพื่อครองใจผู้ประกอบการตลอดไป",
    "บริษัทฯ จะปฏิบัติต่อพนักงาน และผู้ประกอบการเสมือนหนึ่งคนในครอบครัว"
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 1440,
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Container(
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
                "สำนักงานบัญชีพรีเมี่ยม พลัส",
                style: GoogleFonts.ibmPlexSansThai(
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
            Container(
              width: Responsive.isDesktop(context)
                  ? 1440
                  : Responsive.isTablet(context)
                      ? 768
                      : 375,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Center(
                  child: Text(
                    "ประวัติ",
                    style: GoogleFonts.sarabun(
                        decoration: TextDecoration.underline,
                        fontSize: Responsive.isDesktop(context)
                            ? 25
                            : Responsive.isTablet(context)
                                ? 22
                                : 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                width: Responsive.isDesktop(context)
                    ? 1440
                    : Responsive.isTablet(context)
                        ? 768
                        : 375,
                child: Center(
                  child: Text(
                    "สำนักงานบัญชีพรีเมี่ยม พลัส ได้ดำเนินธุรกิจสำนักงานบัญชีมาตั้งแต่ปี 2554 (คณะบุคคล) และดำเนินการจดทะเบียนนิติบุคคลในนาม",
                    style: GoogleFonts.sarabun(
                      fontSize: Responsive.isDesktop(context) ? 20 : 16,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: Responsive.isDesktop(context)
                  ? 1440
                  : Responsive.isTablet(context)
                      ? 768
                      : 375,
              child: Center(
                child: Wrap(
                  children: [
                    Text(
                      '"บริษัท ที่ปรึกษาบัญชีและภาษีอากรพรีเมี่ยม พลัส จำกัด"',
                      style: GoogleFonts.sarabun(
                        fontSize: Responsive.isDesktop(context) ? 20 : 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "ตั้งแต่วันที่ 3 มิถุนายน 2558 โดยผู้ริเริ่มก่อตั้งคือ นายกฤตนน อินต๊ะปัญญา",
                      style: GoogleFonts.sarabun(
                        fontSize: Responsive.isDesktop(context) ? 20 : 16,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: Responsive.isDesktop(context)
                  ? 1440
                  : Responsive.isTablet(context)
                      ? 768
                      : 375,
              child: Text(
                "กรรมการผู้จัดการโดยให้บริการด้านบัญชีแก่ผู้ประกอบการขนาดกลางและขนาดเล็ก บริษัทมีความมุ่งมั่นที่จะให้บริการด้านบัญชีอย่างมีคุณภาพ\nจัดทำให้ถูกต้องตามประมวลรัษฎากร เพื่อสร้างความพึงพอใจสูงสุดให้กับลูกค้า ทางบริษัทมีความตระหนักดีว่า การที่จะผลิตงานบริการให้มีคุณภาพ\nอย่างสม่ำเสมอได้ นอกเหนือจากการตรวจสอบและควบคุมการจัดทำบัญชีอย่างเข้มงวดแล้ว ยังจำเป็นที่จะต้องมีระบบการบริหารคุณภาพที่ดี เป็นที่ยอมรับ\nในวงการธุรกิจ และส่วนราชการที่เกี่ยวข้อง",
                style: GoogleFonts.sarabun(
                  fontSize: Responsive.isDesktop(context) ? 20 : 16,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                width: Responsive.isDesktop(context)
                    ? 1440
                    : Responsive.isTablet(context)
                        ? 768
                        : 375,
                child: Center(
                  child: Text(
                    "วิสัยทัศน์",
                    style: GoogleFonts.sarabun(
                        decoration: TextDecoration.underline,
                        fontSize: Responsive.isDesktop(context)
                            ? 25
                            : Responsive.isTablet(context)
                                ? 22
                                : 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                width: Responsive.isDesktop(context)
                    ? 1440
                    : Responsive.isTablet(context)
                        ? 768
                        : 375,
                child: Center(
                  child: Text(
                    "สำนักงานบัญชีพรีเมี่ยม พลัส มุ่งสู่การพัฒนาเป็นสำนักงานบัญชีที่มีมาตรฐาน บริการที่มีคุณภาพ ถูกต้องแล",
                    style: GoogleFonts.sarabun(
                      fontSize: Responsive.isDesktop(context) ? 20 : 16,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                width: Responsive.isDesktop(context)
                    ? 1440
                    : Responsive.isTablet(context)
                        ? 768
                        : 375,
                child: Center(
                  child: Text(
                    "พันธกิจ",
                    style: GoogleFonts.sarabun(
                        decoration: TextDecoration.underline,
                        fontSize: Responsive.isDesktop(context)
                            ? 25
                            : Responsive.isTablet(context)
                                ? 22
                                : 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Center(
                child: Container(
                  width: Responsive.isDesktop(context)
                      ? 1440
                      : Responsive.isTablet(context)
                          ? 768
                          : 375,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: panta.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          child: new Material(
                            child: Container(
                              child: ListTile(
                                minLeadingWidth: 0,
                                minVerticalPadding: 0,
                                dense: true,
                                // visualDensity: VisualDensity(
                                //     vertical: -4, horizontal: -4),
                                title: Transform.translate(
                                  offset: Offset(0, 0),
                                  child: Text(
                                    panta[index],
                                    style: GoogleFonts.sarabun(
                                      fontSize: Responsive.isDesktop(context)
                                          ? 20
                                          : 16,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            color: Colors.transparent,
                          ),
                        );
                      }),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
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
                  "ทีมงานของเรา",
                  style: GoogleFonts.ibmPlexSansThai(
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
            Responsive.isDesktop(context)
                ? Container(
                    width: Responsive.isDesktop(context)
                        ? 1440
                        : Responsive.isTablet(context)
                            ? 768
                            : 375,
                    child: Center(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width: 300,
                                    height: 300,
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: 300,
                                    height: 300,
                                    child:
                                        Image.asset("assets/member/kong.png"),
                                  ),
                                  Text(
                                    "คุณกฤตนน อินต๊ะปัญญา",
                                    style: GoogleFonts.sarabun(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    "กรรมการผู้จัดการ",
                                    style: GoogleFonts.sarabun(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: 300,
                                    height: 300,
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: 300,
                                    height: 300,
                                  )
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Color.fromARGB(255, 13, 26, 121),
                                      ),
                                      height: 30,
                                      width: 300,
                                      child: Text(
                                        "ฝ่ายควบคุมและสอบทาน",
                                        style: GoogleFonts.sarabun(
                                            fontSize: 18, color: Colors.white),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Container(
                                      width: 300,
                                      height: 300,
                                      child: Image.asset("assets/member/max.png"),
                                    ),
                                    Text(
                                      "คุณชุติพงศ์ บุญเกิด",
                                      style: GoogleFonts.sarabun(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      "ผู้จัดการฝ่ายควบคุมและสอบทาน",
                                      style: GoogleFonts.sarabun(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 25, right: 25),
                                  child: Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          color: Color.fromARGB(255, 13, 26, 121),
                                        ),
                                        height: 30,
                                        width: 300,
                                        child: Text(
                                          "ฝ่ายธุรการและจดทะเบียน",
                                          style: GoogleFonts.sarabun(
                                              fontSize: 18, color: Colors.white),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Container(
                                        width: 300,
                                        height: 300,
                                        child:
                                            Image.asset("assets/member/beer.png"),
                                      ),
                                      Text(
                                        "คุณจันทร์จิรา คมขำ",
                                        style: GoogleFonts.sarabun(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black),
                                      ),
                                      Text(
                                        "ผู้จัดการธุรการและจดทะเบียน",
                                        style: GoogleFonts.sarabun(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                      ),

                                      
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 25),
                                  child: Column(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          color: Color.fromARGB(255, 13, 26, 121),
                                        ),
                                        height: 30,
                                        width: 300,
                                        child: Text(
                                          "ฝ่ายบัญชีและภาษี",
                                          style: GoogleFonts.sarabun(
                                              fontSize: 18, color: Colors.white),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Container(
                                        width: 300,
                                        height: 300,
                                        child:
                                            Image.asset("assets/member/praew-pintusorn.png"),
                                      ),
                                      Text(
                                        "คุณพิธุสร แทรกสุข",
                                        style: GoogleFonts.sarabun(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black),
                                      ),
                                      Text(
                                        "ผู้จัดการฝ่ายบัญชีและภาษี",
                                        style: GoogleFonts.sarabun(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                      )
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Color.fromARGB(255, 13, 26, 121),
                                      ),
                                      height: 30,
                                      width: 300,
                                      child: Text(
                                        "สาขาชลบุรี",
                                        style: GoogleFonts.sarabun(
                                            fontSize: 18, color: Colors.white),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Container(
                                      width: 300,
                                      height: 300,
                                      child:
                                          Image.asset("assets/member/oil.png"),
                                    ),
                                    Text(
                                      "คุณสุพรรณี เสาวะระ",
                                      style: GoogleFonts.sarabun(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      "ผู้จัดการฝ่ายบัญชีและภาษี",
                                      style: GoogleFonts.sarabun(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    
                                    Container(
                                      width: 300,
                                      height: 300,
                                      
                                    ),
                                    
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 25, right: 25),
                                  child: Column(
                                    children: [
                                      
                                      Container(
                                        width: 300,
                                        height: 300,
                                        child:
                                            Image.asset("assets/member/praew-rapeeporn.png"),
                                      ),
                                      Text(
                                        "คุณระพีพร สังขะลา",
                                        style: GoogleFonts.sarabun(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black),
                                      ),
                                      Text(
                                        "เจ้าหน้าที่ธุรการและจดทะเบียน",
                                        style: GoogleFonts.sarabun(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                      ),

                                      
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 25),
                                  child: Column(
                                    children: [
                                      
                                      Container(
                                        width: 300,
                                        height: 300,
                                        child:
                                            Image.asset("assets/member/gam.png"),
                                      ),
                                      Text(
                                        "คุณลลิตา แสนธิ",
                                        style: GoogleFonts.sarabun(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black),
                                      ),
                                      Text(
                                        "รองผู้จัดการฝ่ายบัญชีและภาษี",
                                        style: GoogleFonts.sarabun(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                      )
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    
                                    Container(
                                      width: 300,
                                      height: 300,
                                      child:
                                          Image.asset("assets/member/fon.png"),
                                    ),
                                    Text(
                                      "คุณฆนัฐา ยิ้มประดิษฐ์",
                                      style: GoogleFonts.sarabun(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w300,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      "เจ้าหน้าที่ฝ่ายบัญชีและภาษี 1",
                                      style: GoogleFonts.sarabun(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    
                                    Container(
                                      width: 300,
                                      height: 300,
                                      
                                    ),
                                    
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 25, right: 25),
                                  child: Column(
                                    children: [
                                      
                                      Container(
                                        width: 300,
                                        height: 300,
                                        child:
                                            Image.asset("assets/member/tonhom.png"),
                                      ),
                                      Text(
                                        "คุณเอ พอล",
                                        style: GoogleFonts.sarabun(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black),
                                      ),
                                      Text(
                                        "เจ้าหน้าที่ทำความสะอาด",
                                        style: GoogleFonts.sarabun(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                      ),

                                      
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 25),
                                  child: Column(
                                    children: [
                                      
                                      Container(
                                        width: 300,
                                        height: 300,
                                        child:
                                            Image.asset("assets/member/kwan.png"),
                                      ),
                                      Text(
                                        "คุณธันย์ชนก ไพฑูรย์",
                                        style: GoogleFonts.sarabun(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black),
                                      ),
                                      Text(
                                        "เจ้าหน้าที่ฝ่ายบัญชีและภาษี 2",
                                        style: GoogleFonts.sarabun(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                      )
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    
                                    Container(
                                      width: 300,
                                      height: 300,
                                      
                                    ),
                                    
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    
                                    Container(
                                      width: 300,
                                      height: 300,
                                      
                                    ),
                                    
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 25, right: 25),
                                  child: Column(
                                    children: [
                                      
                                      Container(
                                        width: 300,
                                        height: 300,
                                        
                                      ),
                                      
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 25),
                                  child: Column(
                                    children: [
                                      
                                      Container(
                                        width: 300,
                                        height: 300,
                                        child:
                                            Image.asset("assets/member/bas.png"),
                                      ),
                                      Text(
                                        "คุณอลินดา อ้อมแก้ว",
                                        style: GoogleFonts.sarabun(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black),
                                      ),
                                      Text(
                                        "เจ้าหน้าที่ฝ่ายบัญชีและภาษี 2",
                                        style: GoogleFonts.sarabun(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                      )
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    
                                    Container(
                                      width: 300,
                                      height: 300,
                                      
                                    ),
                                    
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    
                                    Container(
                                      width: 300,
                                      height: 300,
                                      
                                    ),
                                    
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 25, right: 25),
                                  child: Column(
                                    children: [
                                      
                                      Container(
                                        width: 300,
                                        height: 300,
                                        
                                      ),
                                      
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 25),
                                  child: Column(
                                    children: [
                                      
                                      Container(
                                        width: 300,
                                        height: 300,
                                        child:
                                            Image.asset("assets/member/tan.png"),
                                      ),
                                      Text(
                                        "คุณกัญญาวี เกิดชื่น",
                                        style: GoogleFonts.sarabun(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black),
                                      ),
                                      Text(
                                        "เจ้าหน้าที่ฝ่ายบัญชีและภาษี 2",
                                        style: GoogleFonts.sarabun(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                      )
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    
                                    Container(
                                      width: 300,
                                      height: 300,
                                      
                                    ),
                                    
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    
                                    Container(
                                      width: 300,
                                      height: 300,
                                      
                                    ),
                                    
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 25, right: 25),
                                  child: Column(
                                    children: [
                                      
                                      Container(
                                        width: 300,
                                        height: 300,
                                        
                                      ),
                                      
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 25),
                                  child: Column(
                                    children: [
                                      
                                      Container(
                                        width: 300,
                                        height: 300,
                                        child:
                                            Image.asset("assets/member/yoyo.png"),
                                      ),
                                      Text(
                                        "คุณวรรณานัช วงศ์รัตนเพ็ชร",
                                        style: GoogleFonts.sarabun(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black),
                                      ),
                                      Text(
                                        "เจ้าหน้าที่ฝ่ายบัญชีและภาษี 2",
                                        style: GoogleFonts.sarabun(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                      )
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    
                                    Container(
                                      width: 300,
                                      height: 300,
                                      
                                    ),
                                    
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    
                                    Container(
                                      width: 300,
                                      height: 300,
                                      
                                    ),
                                    
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 25, right: 25),
                                  child: Column(
                                    children: [
                                      
                                      Container(
                                        width: 300,
                                        height: 300,
                                        
                                      ),
                                      
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 25),
                                  child: Column(
                                    children: [
                                      
                                      Container(
                                        width: 300,
                                        height: 300,
                                        child:
                                            Image.asset("assets/member/kookkai.png"),
                                      ),
                                      Text(
                                        "คุณวริสา ศรีเพชรพงษ์ศิริ",
                                        style: GoogleFonts.sarabun(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black),
                                      ),
                                      Text(
                                        "เจ้าหน้าที่ฝ่ายบัญชีและภาษี 2",
                                        style: GoogleFonts.sarabun(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                      )
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    
                                    Container(
                                      width: 300,
                                      height: 300,
                                      
                                    ),
                                    
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    
                                    Container(
                                      width: 300,
                                      height: 300,
                                      
                                    ),
                                    
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 25, right: 25),
                                  child: Column(
                                    children: [
                                      
                                      Container(
                                        width: 300,
                                        height: 300,
                                        
                                      ),
                                      
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 25),
                                  child: Column(
                                    children: [
                                      
                                      Container(
                                        width: 300,
                                        height: 300,
                                        child:
                                            Image.asset("assets/member/kwan-pa.png"),
                                      ),
                                      Text(
                                        "คุณปาณิสรา อึ้งพยัคฆ์เดช",
                                        style: GoogleFonts.sarabun(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black),
                                      ),
                                      Text(
                                        "เจ้าหน้าที่ฝ่ายบัญชีและภาษี 2",
                                        style: GoogleFonts.sarabun(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                      )
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    
                                    Container(
                                      width: 300,
                                      height: 300,
                                      
                                    ),
                                    
                                  ],
                                ),
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    
                                    Container(
                                      width: 300,
                                      height: 300,
                                      
                                    ),
                                    
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 25, right: 25),
                                  child: Column(
                                    children: [
                                      
                                      Container(
                                        width: 300,
                                        height: 300,
                                        
                                      ),
                                      
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 25),
                                  child: Column(
                                    children: [
                                      
                                      Container(
                                        width: 300,
                                        height: 300,
                                        child:
                                            Image.asset("assets/member/jimmy.png"),
                                      ),
                                      Text(
                                        "คุณอาคิรา ทากาฮาชิ",
                                        style: GoogleFonts.sarabun(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black),
                                      ),
                                      Text(
                                        "เจ้าหน้าที่ฝ่ายบัญชีและภาษี 2",
                                        style: GoogleFonts.sarabun(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                      )
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    
                                    Container(
                                      width: 300,
                                      height: 300,
                                      
                                    ),
                                    
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    
                                    Container(
                                      width: 300,
                                      height: 300,
                                      
                                    ),
                                    
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 25, right: 25),
                                  child: Column(
                                    children: [
                                      
                                      Container(
                                        width: 300,
                                        height: 300,
                                        
                                      ),
                                      
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 25),
                                  child: Column(
                                    children: [
                                      
                                      Container(
                                        width: 300,
                                        height: 300,
                                        child:
                                            Image.asset("assets/member/kay.png"),
                                      ),
                                      Text(
                                        "คุณชลลดา ผ่องแผ้ว",
                                        style: GoogleFonts.sarabun(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black),
                                      ),
                                      Text(
                                        "เจ้าหน้าที่ฝ่ายบัญชีและภาษี 2",
                                        style: GoogleFonts.sarabun(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                      )
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    
                                    Container(
                                      width: 300,
                                      height: 300,
                                      
                                    ),
                                    
                                  ],
                                ),
                              ],
                            ),
                          ),
Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    
                                    Container(
                                      width: 300,
                                      height: 300,
                                      
                                    ),
                                    
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 25, right: 25),
                                  child: Column(
                                    children: [
                                      
                                      Container(
                                        width: 300,
                                        height: 300,
                                        
                                      ),
                                      
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 25),
                                  child: Column(
                                    children: [
                                      
                                      Container(
                                        width: 300,
                                        height: 300,
                                        child:
                                            Image.asset("assets/member/pan.png"),
                                      ),
                                      Text(
                                        "คุณชญานิศ ศิริคำ",
                                        style: GoogleFonts.sarabun(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black),
                                      ),
                                      Text(
                                        "เจ้าหน้าที่ฝ่ายบัญชีและภาษี 2",
                                        style: GoogleFonts.sarabun(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                      )
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    
                                    Container(
                                      width: 300,
                                      height: 300,
                                      
                                    ),
                                    
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    
                                    Container(
                                      width: 300,
                                      height: 300,
                                      
                                    ),
                                    
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 25, right: 25),
                                  child: Column(
                                    children: [
                                      
                                      Container(
                                        width: 300,
                                        height: 300,
                                        
                                      ),
                                      
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 25),
                                  child: Column(
                                    children: [
                                      
                                      Container(
                                        width: 300,
                                        height: 300,
                                        child:
                                            Image.asset("assets/member/mo.png"),
                                      ),
                                      Text(
                                        "คุณธนัญญา สุ่มแก้ว",
                                        style: GoogleFonts.sarabun(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black),
                                      ),
                                      Text(
                                        "เจ้าหน้าที่ฝ่ายบัญชีและภาษี 2",
                                        style: GoogleFonts.sarabun(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                      )
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    
                                    Container(
                                      width: 300,
                                      height: 300,
                                      
                                    ),
                                    
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20,bottom: 80),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    
                                    Container(
                                      width: 300,
                                      height: 300,
                                      
                                    ),
                                    
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 25, right: 25),
                                  child: Column(
                                    children: [
                                      
                                      Container(
                                        width: 300,
                                        height: 300,
                                        
                                      ),
                                      
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 25),
                                  child: Column(
                                    children: [
                                      
                                      Container(
                                        width: 300,
                                        height: 300,
                                        child:
                                            Image.asset("assets/member/beam.png"),
                                      ),
                                      Text(
                                        "คุณชลธิชา วงศ์เปียง",
                                        style: GoogleFonts.sarabun(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w300,
                                            color: Colors.black),
                                      ),
                                      Text(
                                        "เจ้าหน้าที่ฝ่ายบัญชีและภาษี 2",
                                        style: GoogleFonts.sarabun(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                      )
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    
                                    Container(
                                      width: 300,
                                      height: 300,
                                      
                                    ),
                                    
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                : Container()
          ],
        ),
      ),
    ));
  }
}
