import 'package:flutter/material.dart';

import '../../../../models/app_const_model.dart';
import '../../../widgets/indicator_widget.dart';

class SliderImage extends StatefulWidget {
  const SliderImage({Key? key}) : super(key: key);

  @override
  State<SliderImage> createState() => _SliderImageState();
}

class _SliderImageState extends State<SliderImage> {
  PageController pageController = PageController();
  int currentIndicator = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          bottomLeft: Radius.circular(40),
        ),
        color: AppConst.background,
        boxShadow: [
          BoxShadow(
            blurRadius: 50,
            color: AppConst.primary.withOpacity(0.2),
          ),
        ],
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          PageView(
            controller: pageController,
            onPageChanged: (index) {
              setState(() {
                currentIndicator = index;
              });
            },
            physics: const ClampingScrollPhysics(),
            children: [
              Image.asset(
                'assets/images/img_slider.png',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/image_1.png',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/img_slider.png',
                fit: BoxFit.cover,
              ),
            ],
          ),
          Positioned(
            bottom: 25,
            child: Indicator(
              count: 3,
              indexActive: currentIndicator,
              pageController: pageController,
            ),
          ),
        ],
      ),
    );
  }
}
