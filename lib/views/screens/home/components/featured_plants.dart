import 'package:flutter/material.dart';

import '../../../../models/app_const_model.dart';
import '../../../widgets/product_box_image.dart';
import '../../product_detail/product_detail_screen.dart';

class FeaturedPlantsBlock extends StatefulWidget {
  const FeaturedPlantsBlock({Key? key}) : super(key: key);

  @override
  State<FeaturedPlantsBlock> createState() => _FeaturedPlantsBlockState();
}

class _FeaturedPlantsBlockState extends State<FeaturedPlantsBlock> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ProductBoxImage(
            size: size,
            ratio: 56.2,
            image: 'assets/images/bottom_img_1.png',
            margin: const EdgeInsets.symmetric(
              horizontal: AppConst.padding,
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProductDetailSceen()));
            },
          ),
          ProductBoxImage(
            size: size,
            ratio: 56.2,
            image: 'assets/images/bottom_img_2.png',
            margin: const EdgeInsets.only(
              right: AppConst.padding,
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProductDetailSceen()));
            },
          ),
          ProductBoxImage(
            size: size,
            ratio: 56.2,
            image: 'assets/images/image_2.png',
            margin: const EdgeInsets.only(
              right: AppConst.padding,
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProductDetailSceen()));
            },
          ),
        ],
      ),
    );
  }
}
