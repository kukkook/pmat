import 'package:flutter/material.dart';
import 'package:pmat/responsive.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class FeatureModel {
  final String title;
  final String imageUrl;
  final String page;
  // final String? routePath;
  FeatureModel(this.title, this.imageUrl, this.page);
}


class _ServicesState extends State<Services> {
  List<FeatureModel> features = [
    FeatureModel("ตราประทับบริษัท", "work/w1.jpg", "services/seal"),
    FeatureModel("งานขอ VISA&WORK PERMIT", "work/w2.png", "services/visa&workpermit"),
    FeatureModel("บริการจดทะเบียนเปลี่ยนแปลงแก้ไขอื่นๆ", "work/w3.png", "services/register"),
    FeatureModel("จดทะเบียนห้างหุ้นส่วน", "work/w4.png", "services/partnerships"),
    FeatureModel("จดทะเบียนจัดตั้งบริษัท", "work/w5.png",  "services/established"),
    FeatureModel("บริการวางระบบบัญชี", "work/w6.png", "services/setupacc"),
    FeatureModel("บริการตรวจสอบบัญชี", "work/w7.png", "services/examine"),
    FeatureModel("บริการปิดงบการเงินประจำปี", "work/w8.png", "services/statement"),
    FeatureModel("บริการรับทำบัญชี ภาษีรายปี", "work/w9.png","services/annualtax"),
    FeatureModel("บริการรับทำบัญชี ภาษีรายเดือน", "work/w10.png", "services/monthlytax"),
  ];
  int? hoveredIndex;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 1440,
      color: Colors.transparent,
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
              padding: const EdgeInsets.only(top: 30),
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
                  "งานบริการ",
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
              padding: const EdgeInsets.only(top: 50, bottom: 50),
              child: Container(
                width: Responsive.isDesktop(context)
                    ? 1440
                    : Responsive.isTablet(context)
                        ? 700
                        : 300,
                child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: Responsive.isDesktop(context)
                          ? 4
                          : Responsive.isTablet(context)
                              ? 2
                              : 1,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                    ),
                    itemCount: features.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        child: new Material(
                          child: new InkWell(
                            borderRadius: BorderRadius.circular(16),
                            onTap: () {},
                            onHover: (value) {
                              setState(() {
                                if (value) {
                                  hoveredIndex = index;
                                } else {
                                  hoveredIndex = null;
                                }
                              });
                            },
                            // hoverColor: Color.fromARGB(255, 228, 238, 250),
                            hoverColor: Color.fromARGB(255, 13, 26, 121),
                            child: new Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color.fromARGB(255, 13, 26, 121),
                                      width: 2),
                                  borderRadius: BorderRadius.circular(16)),
                              width: Responsive.isDesktop(context)
                                  ? 300
                                  : Responsive.isTablet(context)
                                      ? 250
                                      : 200,
                              height: Responsive.isDesktop(context)
                                  ? 300
                                  : Responsive.isTablet(context)
                                      ? 250
                                      : 200,
                              child: Center(
                                child: Container(
                                  // margin: EdgeInsets.all(15),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 48, left: 6, right: 6, bottom: 12),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        SizedBox(
                                            width: 100,
                                            height: 100,
                                            child: Image.asset(
                                              'assets/${features[index].imageUrl}',
                                            )),
                                        Text(
                                          '${features[index].title}',
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w500,
                                              fontSize: Responsive.isDesktop(
                                                      context)
                                                  ? 22
                                                  : Responsive.isTablet(context)
                                                      ? 20
                                                      : 20,
                                              color: hoveredIndex == index
                                                  ? Colors.white
                                                  : Color.fromARGB(
                                                      255, 13, 26, 121)),
                                          textAlign: TextAlign.center,
                                        ),
                                        TextButton(
                                          onPressed: () => context
                                              .go('/${features[index].page}'),
                                          child: GridTile(
                                              child: Text(
                                                "คลิกเพื่อดูรายละเอียด",
                                                style: GoogleFonts.inter(
                                                    fontSize:
                                                        Responsive.isDesktop(
                                                                context)
                                                            ? 18
                                                            : Responsive.isTablet(
                                                                    context)
                                                                ? 16
                                                                : 16,
                                                    color: Color.fromARGB(
                                                        255, 57, 129, 237)),
                                              )),
                                        ),
                                      ],
                                    ),
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
          Center(
            child: Container(
              width: Responsive.isDesktop(context)
                  ? 1440
                  : Responsive.isTablet(context)
                      ? 768
                      : 375,
              height: 42,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 13, 26, 121),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "เว็บไซต์ที่เกี่ยวข้อง",
                  style: GoogleFonts.sarabun(
                    fontSize: Responsive.isDesktop(context)
                        ? 18
                        : Responsive.isTablet(context)
                            ? 18
                            : 16,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 80),
              child: Container(
                width: Responsive.isDesktop(context)
                    ? 1440
                    : Responsive.isTablet(context)
                        ? 768
                        : 375,
                        height: 400,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromARGB(255, 13, 26, 121),
                    width: 2
                  ),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
                ),
                child: _buildPanel(),

              ),
            ),
          )
        ],
      ),
    ));
  }

  Widget _buildPanel() {
    return ListView(
      children: <Widget>[
        ListTile(
          hoverColor: Color.fromARGB(255, 234, 253, 255),

          title: Text('กรมพัฒนาธุรกิจการค้า',
          style: GoogleFonts.sarabun(
                  fontSize: Responsive.isDesktop(context)
                      ? 18
                      : Responsive.isTablet(context)
                          ? 18
                          : 16,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
                textAlign: TextAlign.start,),
          onTap: () {
            launch('https://www.dbd.go.th/');
          },
        ),
        Container(
          height: 2,
          color: Color.fromARGB(64, 13, 26, 121),
        ),
        ListTile(
          hoverColor: Color.fromARGB(255, 234, 253, 255),
          title: Text('ระบบนำส่ง e-Filing',
          style: GoogleFonts.sarabun(
                  fontSize: Responsive.isDesktop(context)
                      ? 18
                      : Responsive.isTablet(context)
                          ? 18
                          : 16,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
                textAlign: TextAlign.start,),
          onTap: () {
            launch('https://efiling.dbd.go.th/');
          },
        ),
        Container(
          height: 2,
          color: Color.fromARGB(64, 13, 26, 121),
        ),
        ListTile(
          hoverColor: Color.fromARGB(255, 234, 253, 255),
          title: Text('กรมสรรพากร',
          style: GoogleFonts.sarabun(
                  fontSize: Responsive.isDesktop(context)
                      ? 18
                      : Responsive.isTablet(context)
                          ? 18
                          : 16,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
                textAlign: TextAlign.start,),
          onTap: () {
            launch('http://www.rd.go.th/');
          },
        ),
        Container(
          height: 2,
          color: Color.fromARGB(64, 13, 26, 121),
        ),
        ListTile(
          hoverColor: Color.fromARGB(255, 234, 253, 255),
          title: Text('แบบแสดงรายการเพื่อเสียภาษี',
          style: GoogleFonts.sarabun(
                  fontSize: Responsive.isDesktop(context)
                      ? 18
                      : Responsive.isTablet(context)
                          ? 18
                          : 16,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
                textAlign: TextAlign.start,),
          onTap: () {
            launch('http://rdserver.rd.go.th/%22');
          },
        ),
        Container(
          height: 2,
          color: Color.fromARGB(64, 13, 26, 121),
        ),
        ListTile(
          hoverColor: Color.fromARGB(255, 234, 253, 255),
          title: Text('ยื่นแบบภาษีผ่านอินเทอร์เน็ต',
          style: GoogleFonts.sarabun(
                  fontSize: Responsive.isDesktop(context)
                      ? 18
                      : Responsive.isTablet(context)
                          ? 18
                          : 16,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
                textAlign: TextAlign.start,),
          onTap: () {
            launch('http://efiling.dbd.go.th/');
          },
        ),
        Container(
          height: 2,
          color: Color.fromARGB(64, 13, 26, 121),
        ),
        ListTile(
          hoverColor: Color.fromARGB(255, 234, 253, 255),
          title: Text('กฎหมายออกใหม่',
          style: GoogleFonts.sarabun(
                  fontSize: Responsive.isDesktop(context)
                      ? 18
                      : Responsive.isTablet(context)
                          ? 18
                          : 16,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
                textAlign: TextAlign.start,),
          onTap: () {
            launch('http://www.rd.go.th/publish/21221.0.html');
          },
        ),
        Container(
          height: 2,
          color: Color.fromARGB(64, 13, 26, 121),
        ),
        ListTile(
          hoverColor: Color.fromARGB(255, 234, 253, 255),
          title: Text('อบรม-สัมนาภาษี',
          style: GoogleFonts.sarabun(
                  fontSize: Responsive.isDesktop(context)
                      ? 18
                      : Responsive.isTablet(context)
                          ? 18
                          : 16,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
                textAlign: TextAlign.start,),
          onTap: () {
            launch('http://www.rd.go.th/publish/292.0.html');
          },
        ),
        Container(
          height: 2,
          color: Color.fromARGB(64, 13, 26, 121),
        ),
        ListTile(
          hoverColor: Color.fromARGB(255, 234, 253, 255),
          title: Text('สำนักงานประกันสังคม',
          style: GoogleFonts.sarabun(
                  fontSize: Responsive.isDesktop(context)
                      ? 18
                      : Responsive.isTablet(context)
                          ? 18
                          : 16,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
                textAlign: TextAlign.start,),
          onTap: () {
            launch('http://www.sso.go.th/');
          },
        ),
      ],
    );
  }
}
