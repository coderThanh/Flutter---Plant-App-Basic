import 'package:flutter/material.dart';

import '../../../../models/app_const_model.dart';
import '../../../widgets/product_box_default_widget.dart';
import '../../product_detail/product_detail_screen.dart';

class RecommenedListBlock extends StatelessWidget {
  const RecommenedListBlock({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      clipBehavior: Clip.none,
      child: Row(
        children: [
          ProductBoxDefault(
            size: size,
            tilte: 'Samantha',
            price: '400',
            img: 'assets/images/image_1.png',
            country: 'Russia',
            onPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProductDetailSceen()));
            },
            margin: const EdgeInsets.symmetric(horizontal: AppConst.padding),
          ),
          ProductBoxDefault(
            size: size,
            tilte: 'Samantha',
            price: '400',
            img: 'assets/images/image_2.png',
            country: 'Russia',
            margin: const EdgeInsets.only(right: AppConst.padding),
            onPress: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProductDetailSceen()));
            },
          ),
          ProductBoxDefault(
            size: size,
            tilte: 'Samantha',
            price: '400',
            img: 'assets/images/image_3.png',
            country: 'Russia',
            margin: const EdgeInsets.only(right: AppConst.padding),
            onPress: () {
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
