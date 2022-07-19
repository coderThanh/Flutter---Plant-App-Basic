import 'package:flutter/material.dart';

import '../../models/app_const_model.dart';
import 'search_widget.dart';
import 'title_with_image_widget.dart';

class HeaderCircleWidget extends StatelessWidget {
  const HeaderCircleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Stack(
        children: [
          Container(
            height: 120,
            padding: const EdgeInsets.only(
              left: AppConst.padding,
              right: AppConst.padding,
            ),
            decoration: const BoxDecoration(
              color: AppConst.primary,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            alignment: Alignment.topCenter,
            child: const TitleWidthImage(),
          ),
          const Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: SearchWidget(),
          ),
        ],
      ),
    );
  }
}
