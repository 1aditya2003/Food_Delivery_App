import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Slider1 extends StatefulWidget {
  const Slider1({super.key});

  @override
  State<Slider1> createState() => _Slider1State();
}

class _Slider1State extends State<Slider1> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            children: [
              CarouselSlider(
                  items: [
                    Container(
                      margin: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://b.zmtcdn.com/data/pictures/8/20136398/46013840265f855ac73ac8c861c89afa_o2_featured_v2.jpg?fit=around|750:500&crop=750:500;*,*'))),
                    ),
                    Container(
                      margin: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://b.zmtcdn.com/data/reviews_photos/8c3/0dee3e53ec00a0a33432d027e5ae98c3_1576682846.jpg'))),
                    ),
                    Container(
                      margin: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://b.zmtcdn.com/data/pictures/8/19613248/419a449f2e54dfe95266ae297a2d3841.jpg'))),
                    )
                  ],
                  carouselController: _controller,
                  options: CarouselOptions(
                      enableInfiniteScroll: true,
                      height: 320,
                      enlargeCenterPage: true,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      autoPlay: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      })),
              
            ],
          ),
        ),
        SizedBox(
                height: 5,
              ),
              buildIndicator(),
              SizedBox(
                height: 5,
              ),
      ],
    );
  }

  Widget buildIndicator() =>
      AnimatedSmoothIndicator(activeIndex: _current, count: 3,effect:  WormEffect(dotHeight: 10,dotWidth: 10,dotColor: Colors.white,activeDotColor: Color.fromARGB(255, 162, 133, 212)),);
}
