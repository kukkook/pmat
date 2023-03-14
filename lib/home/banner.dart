import 'package:flutter/material.dart';
import 'package:pmat/responsive.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BannerPage extends StatefulWidget {
  @override
  _BannerState createState() => _BannerState();
}

class _BannerState extends State<BannerPage> {
  CarouselController _controller = CarouselController();
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          // width: 1440,
          color: Colors.white,
          child: Center(
            child: Container(
                // width: Responsive.isDesktop(context)
                //     ? 1440
                //     : Responsive.isTablet(context)
                //         ? 768
                //         : 375,
                color: Colors.white,
                child: Stack(
                  children: [
                    Responsive.isDesktop(context)
                        ? Container(
                            child: CarouselSlider(
                                carouselController: _controller,
                                options: CarouselOptions(
                                  viewportFraction: 0.67,
                                  height: 500,
                                  autoPlay: true,
                                  onPageChanged: (index, reason) {
                                    setState(() {
                                      _current = index;
                                    });
                                  },
                                ),
                                items: [
                                  Container(
                                    width: 1440,
                                    // color: Colors.amber,
                                    child: Image.asset(
                                      "assets/header/banner2.png",
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                  Container(
                                    width: 1440,
                                    // color: Colors.amber,
                                    child: Image.asset(
                                      "assets/header/service.png",
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                  Container(
                                    width: 1440,
                                    // color: Colors.amber,
                                    child: Image.asset(
                                      "assets/header/head.png",
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ),
                                ]),
                          )
                        : Responsive.isTablet(context)
                            ? Container(
                                child: CarouselSlider(
                                    carouselController: _controller,
                                    options: CarouselOptions(
                                      viewportFraction: 0.67,
                                      height: 200,
                                      autoPlay: true,
                                      onPageChanged: (index, reason) {
                                        setState(() {
                                          _current = index;
                                        });
                                      },
                                    ),
                                    items: [
                                      Container(
                                        width: 768,
                                        // color: Colors.amber,
                                        child: Image.asset(
                                          "assets/header/banner2.png",
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                      Container(
                                        width: 768,
                                        // color: Colors.amber,
                                        child: Image.asset(
                                          "assets/header/service.png",
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                      Container(
                                        width: 768,
                                        // color: Colors.amber,
                                        child: Image.asset(
                                          "assets/header/head.png",
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ]),
                              )
                            : Container(
                                child: CarouselSlider(
                                    carouselController: _controller,
                                    options: CarouselOptions(
                                      viewportFraction: 0.67,
                                      height: 100,
                                      autoPlay: true,
                                      onPageChanged: (index, reason) {
                                        setState(() {
                                          _current = index;
                                        });
                                      },
                                    ),
                                    items: [
                                      Container(
                                        width: 375,
                                        // color: Colors.amber,
                                        child: Image.asset(
                                          "assets/header/banner2.png",
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                      Container(
                                        width: 375,
                                        // color: Colors.amber,
                                        child: Image.asset(
                                          "assets/header/service.png",
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                      Container(
                                        width: 375,
                                        // color: Colors.amber,
                                        child: Image.asset(
                                          "assets/header/head.png",
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ]),
                              )
                  ],
                )),
          )),
    );
  }
}
