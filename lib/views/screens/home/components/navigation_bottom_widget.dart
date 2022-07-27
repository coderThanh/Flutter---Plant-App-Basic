import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../models/app_const_model.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            spreadRadius: 0,
            blurRadius: 10,
          ),
        ],
      ),
      padding: const EdgeInsets.only(
        left: AppConst.padding,
        right: AppConst.padding,
        bottom: AppConst.padding / 3,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Material(
            color: Colors.transparent,
            child: IconButton(
              onPressed: () {},
              splashRadius: 20,
              icon: SvgPicture.asset(
                AppConst.iconFlower,
                height: 18,
              ),
            ),
          ),
          Material(
            color: Colors.transparent,
            child: IconButton(
              onPressed: () {},
              splashRadius: 20,
              icon: SvgPicture.asset(
                AppConst.iconHeader,
                height: 18,
              ),
            ),
          ),
          Material(
            color: Colors.transparent,
            child: IconButton(
              onPressed: () {},
              splashRadius: 20,
              icon: SvgPicture.asset(
                AppConst.iconUser,
                height: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
