import 'package:flutter/material.dart';
import 'package:pmat/responsive.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class Item {
  // final int id;
  final String title;
  final List<String> children;
  // final String description;
  bool isExpanded;
  Item(
      // this.id,
      {
    required this.title,
    required this.children,
    // this.description,
    required this.isExpanded,
  });
}

class FeatureModel {
  final String title;
  final String imageUrl;
  final String page;
  // final String? routePath;
  FeatureModel(this.title, this.imageUrl, this.page);
}

class _ServicesState extends State<Services> {
  List<Item> items = [
    Item(
        // 1,
        title: "บุคคลธรรมดา",
        children: [
          "วางแผนภาษีและวิเคราะห์ข้อมูลทางการเงิน",
          "จัดทำและยื่นแบบภาษีทุกประเภท เช่น ภาษีมูลค่าเพิ่ม ภาษีเงินได้บุคคลธรรมดา",
          "สอบทานรายงานภาษีซื้อและภาษีขาย",
          "จัดทำบัญชีคุมสินค้า",
          "ให้คำแนะนำประเด็นปัญหาที่เกี่ยวข้องกับบัญชีและภาษีอากร",
          "ให้คำปรึกษาและให้การแนะนำเกี่ยวกับการจัดระบบเอกสารทางการค้าต่างๆเพื่อการควบคุมภายในที่ดี",
          "แก้ปัญหาประเด็นภาษีอากรเมื่อถูกตรวจสอบจากกรมสรรพากร"
        ],
        isExpanded: false),
    Item(
        // 2,
        title: "นิติบุคคล",
        children: [
          "จัดทำบัญชีภาษีมูลค่าเพิ่ม ภาษีเงินได้หัก ณ ที่จ่าย ภาษีเงินได้นิติบุคคล",
          "สอบทานรายงานภาษีซื้อและภาษีขาย",
          "จัดทำงบการเงินนำส่งกรมสรรพากรและกรมพัฒนาธุรกิจการค้า",
          "จัดทำและยื่นแบบภาษีทุกประเภท เช่น ภาษีมูลค่าเพิ่ม ภาษีเงินได้หัก ณ ที่จ่าย ภาษีเงินได้นิติบุคคล",
          "จัดทำบัญชีคุมสินค้า",
          "ห้คำแนะนำประเด็นปัญหาที่เกี่ยวข้องกับบัญชีและภาษีอากร",
          "ให้คำปรึกษาและให้การแนะนำเกี่ยวกับการจัดระบบเอกสารทางการค้าต่างๆเพื่อการควบคุมภายในที่ดี",
          "แก้ปัญหาประเด็นภาษีอากรเมื่อถูกตรวจสอบจากกรมสรรพากร",
        ],
        isExpanded: false),
    Item(
        // 3,
        title: "งานจัดทะเบียนธุรกิจ",
        children: [
          "จดทะเบียนพาณิชย์ร้านค้า",
          "จดทะเบียนบริษัท ห้างหุ้นส่วนสามัญ ห้างหุ้นส่วนจำกัด",
          "จดทะเบียนแก้ไขเปลี่ยนแปลงต่างๆ เช่น แก้ไขกรรมการ,อำนาจกรรมการ เพิ่มทุน/ลดทุน แก้ไขเพิ่มเติมวัตถุประสงค์ ย้ายที่ตั้งสำนักงาน เพิ่ม/ลดสาขา เปลี่ยนแปลงรายชื่อผู้ถือหุ้น",
          "จดทะเบียนเลิกและชำระบัญชี",
          "ขอมีเลขประจำตัวผู้เสียภาษีของคณะบุคคล, นิติบุคคล",
          "จดทะเบียนเปลี่ยนแปลงต่างๆต่อกรมสรรพากร",
          "ขั้นทะเบียนประกันสังคม กองทุนเงินทดแทนและแจ้งการเปลี่ยนแปลงต่างๆ",
          "จดทะเบียนเครื่องหมายการค้า, ลิขสิทธิ์, สิทธิบัตร",
          "ขอใบอนุญาตกับส่วนราชการอื่นๆ เช่น ใบอนุญาตประกอบกิจการโรงงานอุตสาหกรรม ฯลฯ",
          "ขอชำระภาษีโรงเรือน, ภาษีป้าย",
          "จดทะเบียนเป็นผู้ประกอบการในระบบภาษีมูลค่าเพิ่ม, ภาษีธุรกิจเฉพาะ",
          "ต่ออายุใบอนุญาตทำงาน Visa และ Work permit",
          "ต่อใบอนุญาตโรงงาน ฯลฯ",
        ],
        isExpanded: false),
    Item(
        // 4,
        title: "งานบัญชีเงินเดือนและประกันสังคม",
        children: [
          "จัดทำและยื่นแบบภาษีเงินได้หัก ณ ที่จ่ายเงินเดือน(ภงด.1) รายเดือน และนำส่งภาษีต่อกรมสรรพากร",
          "ขั้นทะเบียนกองทุนประกันสังคมและกองทุนเงินทดแทน",
          "จัดทำแบบรายการแสดงการส่งเงินสมทบ(สปส.1-10)รายเดือน และส่งเงินสมทบต่อสำนักงานประกันสังคม",
          "จัดทำเอกสารกรณีมีการเปลี่ยนแปลงข้อมูลที่สำนักงานประกันสังคม เช่น แจ้งการเข้าทำงานใหม่ แจ้งการเปลี่ยนแปลงข้อเท็จจริงของนายจ้างและผู้ประกันตน แจ้งการสิ้นสุดเป็นผู้ประกันตน ขอบัตรประกันสังคม",
          "ให้คำปรึกษาแนะนำในส่วนที่เกี่ยวข้องกับกฎหมายประกันสังคมและกฎหมายแรงงาน",
          "เข้าชี้แจงและพบเจ้าหน้าที่ประกันสังคมหรือเจ้าหน้าที่กรมแรงงาน",
          "จัดทำเอกสารตรวจประกันสังคมและกรมแรงงาน เช่น แบบแสดงสภาพการจ้างงาน ข้อบังคับการทำงาน ทะเบียนพนักงาน ฯลฯ",
        ],
        isExpanded: false),
    Item(
        // 5,
        title: "ตรวจสอบบัญชี",
        children: [
          "ตรวจสอบบัญชีเพื่อแสดงความเห็นต่องบการเงินว่าถูกต้องตามหลักการบัญชีที่รับรองทั่วไปหรือไม่",
          "เสนอรายการปรับปรุงทางบัญชีและภาษีอากร",
          "สนอข้อสังเกตต่อผู้บริหาร เพื่อให้ทราบถึงความบกพร่องของการควบคุมภายในที่สำคัญ ซึ่งอาจนำไปสู่การทุจริตหรือความผิดพลาดในการดำเนินงานภายในองค์กร,เสนอแนะการจัดทำและจัดเก็บเอกสารที่เป็นระบบ"
        ],
        isExpanded: false),
  ];

  int? hoveredIndex;

  List<FeatureModel> features = [
    FeatureModel("ตราประทับบริษัท", "work/w1.jpg", "services/seal"),
    FeatureModel(
        "งานขอ VISA&WORK PERMIT", "work/w2.png", "services/visa&workpermit"),
    FeatureModel("บริการจดทะเบียนเปลี่ยนแปลงแก้ไขอื่นๆ", "work/w3.png",
        "services/register"),
    FeatureModel("จดทะเบียนห้างหุ้นส่วน", "work/w4.png", "services/partnerships"),
    FeatureModel("จดทะเบียนจัดตั้งบริษัท", "work/w5.png", "services/established"),
    FeatureModel("บริการวางระบบบัญชี", "work/w6.png", "services/setupacc"),
    FeatureModel("บริการตรวจสอบบัญชี", "work/w7.png", "services/examine"),
    FeatureModel("บริการปิดงบการเงินประจำปี", "work/w8.png", "services/statement"),
    FeatureModel("บริการรับทำบัญชี ภาษีรายปี", "work/w9.png", "services/annualtax"),
    FeatureModel("บริการรับทำบัญชี ภาษีรายเดือน", "work/w10.png", "services/monthlytax"),
  ];

  List<String> img = [
    "team/1.jpg",
    "team/2.jpg",
    "team/3.jpg",
    "team/4.jpg",
    "team/5.jpg",
    "team/6.jpg",
    "team/7.jpg",
    "team/8.jpg",
    "team/9.jpg",
    "team/10.jpg",
    "team/11.jpg",
    "team/12.jpg"
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
          crossAxisAlignment: CrossAxisAlignment.center,
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
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Container(
                width: Responsive.isDesktop(context)
                    ? 1440
                    : Responsive.isTablet(context)
                        ? 768
                        : 375,
                child: Text(
                  "สำนักงานบัญชีพรีเมี่ยม พลัส ของเรามุ่งมั่นให้บริการด้วยคุณภาพ แบบครบวงจร เราให้บริการ ทำบัญชี ยื่นแบบแสดงรายการภาษี วางระบบบัญชีและภาษีอากรตรวจสอบบัญชี จำหน่ายโปรแกรมบัญชีสำเร็จรูป จดทะเบียนบริษัท ออกแบบโลโก้ โดยผู้เชี่ยวชาญมืออาชีพและตรวจสอบบัญชีโดยผู้สอบบัญชีรับอนุญาต สำนักงานบัญชีพรีเมี่ยม พลัส รับทำบัญชีโดยเน้นคุณภาพงาน ถูกต้อง ซื่อสัตย์และรวดเร็ว เราอบรมและฝึกฝนนักบัญชีให้มีความเชี่ยวชาญในวิชาชีพบัญชี และมีความรับผิดชอบในการทำงานบัญชี พร้อมทั้งพัฒนาระบบของสำนักงานบัญชีอย่างต่อเนื่องมากว่า 10 ปี จึงมีลูกค้าให้ความไว้วางใจใช้บริการทำบัญชีมากกว่า 500 รายและเพิ่มมากขึ้นอย่างต่อเนื่อง",
                  style: GoogleFonts.sarabun(
                      fontSize: Responsive.isDesktop(context)
                          ? 18
                          : Responsive.isTablet(context)
                              ? 16
                              : 14,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 91, 87, 87)),
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
              height: Responsive.isDesktop(context)
                  ? 40
                  : Responsive.isTablet(context)
                      ? 35
                      : 30,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 13, 26, 121),
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                "บริการของเรา",
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
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
              ),
              child: SizedBox(
                  width: Responsive.isDesktop(context)
                      ? 1200
                      : Responsive.isTablet(context)
                          ? 700
                          : 320,
                  child: Image.asset(
                    "assets/banner/ads1.jpg",
                    fit: BoxFit.fitWidth,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 50),
              child: Container(
                  width: Responsive.isDesktop(context)
                      ? 1440
                      : Responsive.isTablet(context)
                          ? 768
                          : 375,
                  child: _buildPanel()),
            ),
            Padding(
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                                        Container(
                                          width: Responsive.isDesktop(context)
                                              ? 280
                                              : Responsive.isTablet(context)
                                                  ? 230
                                                  : 180,
                                          child: TextButton(
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
            Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Responsive.isDesktop(context)
                    ? Wrap(
                        children: [
                          SizedBox(
                              width: Responsive.isDesktop(context)
                                  ? 700
                                  : Responsive.isTablet(context)
                                      ? 320
                                      : 150,
                              child: Image.asset(
                                "assets/banner/ads2.jpg",
                                fit: BoxFit.fitWidth,
                              )),
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: SizedBox(
                                width: Responsive.isDesktop(context)
                                    ? 700
                                    : Responsive.isTablet(context)
                                        ? 320
                                        : 150,
                                child: Image.asset(
                                  "assets/banner/ads3.jpg",
                                  fit: BoxFit.fitWidth,
                                )),
                          ),
                        ],
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                              width: Responsive.isDesktop(context)
                                  ? 1400
                                  : Responsive.isTablet(context)
                                      ? 760
                                      : 330,
                              child: Image.asset(
                                "assets/banner/ads2.jpg",
                                fit: BoxFit.fitWidth,
                              )),
                              SizedBox(height: 30,),
                          SizedBox(
                              width: Responsive.isDesktop(context)
                                  ? 1400
                                  : Responsive.isTablet(context)
                                      ? 760
                                      : 330,
                              child: Image.asset(
                                "assets/banner/ads3.jpg",
                                fit: BoxFit.fitWidth,
                              ))
                        ],
                      )),
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
                "ทีมงานของเรา",
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
            Padding(
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
                          ? 6
                          : Responsive.isTablet(context)
                              ? 4
                              : 3,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                    ),
                    itemCount: img.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        child: new Material(
                          child: new Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16)),
                            width: Responsive.isDesktop(context)
                                ? 100
                                : Responsive.isTablet(context)
                                    ? 170
                                    : 100,
                            // height: Responsive.isDesktop(context)
                            //     ? 100
                            //     : Responsive.isTablet(context)
                            //         ? 170
                            //         : 100,
                            // child: Image.asset(
                            //   "assets/${img[index]}",
                            //   fit: BoxFit.fitWidth,
                            // ),
                            child: GestureDetector(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (_) => Dialog(
                                    child: Image.asset("assets/${img[index]}",
                                        // height: 1000,
                                        width: 1200),
                                  ),
                                );
                              },
                              child: Image.asset("assets/${img[index]}",
                                  height: 100, width: 100),
                            ),
                          ),
                          color: Colors.transparent,
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    ));
  }

  Widget _buildPanel() {
    return MediaQuery(
        data: MediaQuery.of(context),
        // decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: ExpansionPanelList(
          animationDuration: Duration(seconds: 1),
          dividerColor: Color.fromARGB(255, 232, 234, 250),
          elevation: 0,
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              items[index].isExpanded = !isExpanded;
            });
          },
          children: items.map((item) {
            int index = items.indexOf(item);
            return ExpansionPanel(
              backgroundColor: Color.fromARGB(255, 232, 234, 250),
              canTapOnHeader: true,
              headerBuilder: (BuildContext context, bool isExpanded) {
                return ListTile(
                  // iconColor:isExpanded? Color.fromARGB(255, 13, 26, 121) : Colors.black,
                  hoverColor: Color.fromARGB(255, 13, 26, 121),
                  title: Text(
                    item.title,
                    style: TextStyle(
                        color: isExpanded
                            ? Color.fromARGB(255, 13, 26, 121)
                            : Colors.black,
                        fontSize: 18),
                  ),
                );
              },
              body: ListView.builder(
                shrinkWrap: true,
                itemCount: item.children.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Image.asset("assets/services/check.png"),
                    title: Text(item.children[index]),
                  );
                },
              ),
              isExpanded: items[index].isExpanded,
            );
          }).toList(),
        ));
  }
}
