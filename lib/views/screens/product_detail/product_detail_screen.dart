import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'components/actiont_side.dart';
import 'components/slide.dart';

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
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: (size.height * 0.562 > 400) ? size.height * 0.562 : 400,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const [
                    ActionSide(),
                    Expanded(child: SliderImage()),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
