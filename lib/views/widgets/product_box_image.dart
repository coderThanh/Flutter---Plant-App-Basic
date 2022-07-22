import 'package:flutter/material.dart';

import '../../models/app_function_model.dart';

class ProductBoxImage extends StatelessWidget {
  const ProductBoxImage({
    Key? key,
    required this.size,
    required this.image,
    this.ratio,
    this.margin,
  }) : super(key: key);

  final Size size;
  final double? ratio;
  final EdgeInsets? margin;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        width: size.width * 0.7,
        margin: margin,
        height: AppFunc.getHeightByRatio(width: size.width * 0.7, ratio: ratio),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Image.asset(
          image,
          fit: BoxFit.cover,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
