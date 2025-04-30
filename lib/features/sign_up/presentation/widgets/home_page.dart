import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  HomeTab({super.key});

  List<String> ads = [
    'assets/images/pag.jpeg',
    'assets/images/photo3.jpeg',
    'assets/images/photo4.jpeg',
    'assets/images/pohoto2.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CarouselSlider.builder(
          options: CarouselOptions(
            height: 400,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            onPageChanged: (index, reason) {},
            scrollDirection: Axis.horizontal,
          ),
          itemCount: ads.length,
          itemBuilder:
              (BuildContext context, int itemIndex, int pageViewIndex) =>
                  Image.asset(ads[itemIndex]),
        ),
          ),
          
        ],
        
      ),
    );
  }
}
