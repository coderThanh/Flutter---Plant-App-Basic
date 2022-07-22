import 'package:flutter/material.dart';

import '../../../models/app_const_model.dart';
import '../product_box_default_widget.dart';

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
            onPress: () {},
            margin: const EdgeInsets.symmetric(horizontal: AppConst.padding),
          ),
          ProductBoxDefault(
            size: size,
            tilte: 'Samantha',
            price: '400',
            img: 'assets/images/image_2.png',
            country: 'Russia',
            margin: const EdgeInsets.only(right: AppConst.padding),
            onPress: () {},
          ),
          ProductBoxDefault(
            size: size,
            tilte: 'Samantha',
            price: '400',
            img: 'assets/images/image_3.png',
            country: 'Russia',
            margin: const EdgeInsets.only(right: AppConst.padding),
            onPress: () {},
          ),
        ],
      ),
    );
  }
}
