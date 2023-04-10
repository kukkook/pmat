import 'package:flutter/material.dart';
import 'package:pmat/responsive.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';

import 'package:pmat/footer.dart';

class DetailContact extends StatefulWidget {
  const DetailContact({super.key});

  @override
  State<DetailContact> createState() => _DetailContactState();
}

class _DetailContactState extends State<DetailContact> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            width: 1440,
            child: Responsive.isDesktop(context)
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                    width: Responsive.isDesktop(context)
                                        ? 700
                                        : Responsive.isTablet(context)
                                            ? 300
                                            : 130,
                                    child: Image.asset(
                                        "assets/banner/contact.png"))
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 80),
                                  child: RichText(
                                      text: TextSpan(children: [
                                    TextSpan(
                                        text:
                                            "สำนักงานบัญชีพรีเมี่ยม พลัส ได้จดทะเบียนตามประมวล\nกฎหมายแพ่งและพาณิชย์เป็นบริษัทโดยใช้ชื่อว่า",
                                        style: GoogleFonts.sarabun(
                                            fontSize: 22,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400)),
                                    TextSpan(
                                        text:
                                            '\n"บริษัท ที่ปรึกษาบัญชีและภาษีอากร พรีเมี่ยม พลัส จำกัด"  ',
                                        style: GoogleFonts.sarabun(
                                            fontSize: 22,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w700)),
                                    TextSpan(
                                        text:
                                            "\nนิติบุคคลประเภทบริษัทจำกัด เมื่อวันที่ 3 มิถุนายน 2558",
                                        style: GoogleFonts.sarabun(
                                            fontSize: 22,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400))
                                  ])),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                : Container()));
  }
}
