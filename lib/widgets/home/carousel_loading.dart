import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CarouselSliderX extends StatefulWidget {
  CarouselSliderX({
    super.key,
  });

  @override
  State<CarouselSliderX> createState() => _CarouselSliderXState();
}

class _CarouselSliderXState extends State<CarouselSliderX> {
  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'assets/images/slider/slide1.png',
      'assets/images/slider/slide2.webp',
      'assets/images/slider/slide3.png',
    ];

    return CarouselSlider(
      items: imgList
          .map(
            (item) => Container(
              width: 350,
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
                child: Image.asset(
                  item,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
          .toList(),
      options: CarouselOptions(
        height: 150,
        autoPlay: true,
        aspectRatio: 2.0,
        enlargeCenterPage: true,
        viewportFraction: 1,
      ),
    );
  }
}
