import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yummy_food/constants/image_strings.dart';
import 'package:yummy_food/constants/theme/app_colors.dart';
import 'package:yummy_food/widgets/images/my_circular_container.dart';
import 'package:yummy_food/widgets/images/my_rounded_image.dart';

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
    final controller = Get.put(HomeController());

    return Stack(
      children: [
        CarouselSlider(
          items: [
            MyRoundedImage(
              imageUrl: MyImages.slide1,
            ),
            MyRoundedImage(
              imageUrl: MyImages.slide2,
            ),
            MyRoundedImage(
              imageUrl: MyImages.slide3,
            ),
          ],
          options: CarouselOptions(
            height: 150,
            viewportFraction: 1,
            onPageChanged: (index, reason) =>
                controller.updatePageIndicator(index),
            autoPlay: true,
            aspectRatio: 2,
            enableInfiniteScroll: true,
            initialPage: 0,
            autoPlayInterval: Duration(seconds: 3),
            pauseAutoPlayOnTouch: true,
          ),
        ),
        Positioned(
          top: 10,
          left: 100,
          child: Obx(
            () => Row(
              children: [
                for (var i = 0; i < 3; i++)
                  MyCircularContainer(
                    width: 68,
                    height: 4,
                    margin: const EdgeInsets.only(right: 6),
                    backgorundColor: controller.carousalCurrentIndex.value == i
                        ? Colors.white
                        : AppColors.grayscale40,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  final carousalCurrentIndex = 0.obs;

  void updatePageIndicator(index) {
    carousalCurrentIndex.value = index;
  }
}
