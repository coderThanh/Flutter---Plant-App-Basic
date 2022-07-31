import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'components/body.dart';
import 'components/bottom_navigator_bar.dart';

class ProductDetailSceen extends StatefulWidget {
  const ProductDetailSceen({Key? key}) : super(key: key);

  @override
  State<ProductDetailSceen> createState() => _ProductDetailSceenState();
}

class _ProductDetailSceenState extends State<ProductDetailSceen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return AnnotatedRegion(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: Body(size: size),
        bottomNavigationBar: BottomNavidatorBar(size: size),
        extendBody: true,
      ),
    );
  }
}
