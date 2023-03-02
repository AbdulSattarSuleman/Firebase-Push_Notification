import 'package:ecommerce_app_ui/utils/image_manager.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

import '../utils/color_manager.dart';

class ProductSlider extends StatefulWidget {
  const ProductSlider({super.key});

  @override
  State<ProductSlider> createState() => _ProductSliderState();
}

class _ProductSliderState extends State<ProductSlider> {
  @override
  Widget build(BuildContext context) {
    final List<String> imageList = [
      ImageManager.image1,
      ImageManager.image2,
      ImageManager.image3,
      ImageManager.image4,
    ];
    return GFCarousel(
      activeIndicator: ColorManager.primaryColor,
      passiveIndicator: ColorManager.greColor,
      autoPlay: true,
      autoPlayAnimationDuration: const Duration(seconds: 1),
      // activeDotBorder: Border(
      //     bottom: BorderSide(width: 10, color: ColorManager.primaryColor),
      //     top: BorderSide(width: 10, color: ColorManager.primaryColor)),
      // passiveDotBorder: Border(
      //     bottom: BorderSide(width: 10, color: ColorManager.greColor),
      //     top: BorderSide(width: 10, color: ColorManager.greColor)),
      items: imageList.map(
        (url) {
          return ClipRRect(
            // borderRadius: const BorderRadius.all(Radius.circular(5.0)),
            child: Image.asset(
              url,
              fit: BoxFit.contain,
              width: 200,
              // height: 500,
            ),
          );
        },
      ).toList(),
      onPageChanged: (index) {
        setState(() {
          index;
        });
      },
    );
  }
}
