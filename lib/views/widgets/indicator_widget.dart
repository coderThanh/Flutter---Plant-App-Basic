import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  const Indicator({
    Key? key,
    required this.count,
    required this.indexActive,
    this.color,
    this.colorActive,
    this.margin,
    this.pageController,
    this.width,
    this.widthActive,
    this.height,
  }) : super(key: key);

  final int count;
  final int indexActive;
  final PageController? pageController;
  final double? width;
  final double? widthActive;
  final double? height;
  final Color? color;
  final Color? colorActive;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 10,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: count,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => pageController?.animateToPage(index,
                duration: const Duration(milliseconds: 400),
                curve: Curves.ease),
            child: AnimatedContainer(
              width: (index == indexActive) ? widthActive ?? 20 : width ?? 10,
              margin: margin ?? const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                color: (index == indexActive)
                    ? colorActive ?? Colors.white
                    : color ?? Colors.white60,
                borderRadius: const BorderRadius.all(Radius.circular(100)),
              ),
              duration: const Duration(milliseconds: 300),
              curve: Curves.ease,
            ),
          );
        },
      ),
    );
  }
}
