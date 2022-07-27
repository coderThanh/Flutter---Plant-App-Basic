import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../models/app_const_model.dart';
import '../../../widgets/button_icon_svg_widget.dart';

class ActionSide extends StatelessWidget {
  const ActionSide({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: AppConst.padding,
        right: AppConst.padding,
      ),
      width: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ButtonIconSvg(
            backgroundColor: Colors.transparent,
            splashRadius: 22,
            boxDecoration: const BoxDecoration(),
            onPress: () {
              Navigator.pop(context);
            },
            icon: SvgPicture.asset(
              AppConst.iconArrowBlack,
              height: 16,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                top: AppConst.padding,
                bottom: AppConst.margin,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonIconSvg(
                    backgroundColor: Colors.white,
                    height: 50,
                    width: 50,
                    onPress: () {},
                    icon: SvgPicture.asset(
                      AppConst.iconSun,
                    ),
                  ),
                  ButtonIconSvg(
                    backgroundColor: Colors.white,
                    height: 50,
                    width: 50,
                    onPress: () {},
                    icon: SvgPicture.asset(
                      AppConst.iconTempareture,
                    ),
                  ),
                  ButtonIconSvg(
                    backgroundColor: Colors.white,
                    height: 50,
                    width: 50,
                    onPress: () {},
                    icon: SvgPicture.asset(
                      AppConst.iconWater,
                      height: 23,
                    ),
                  ),
                  ButtonIconSvg(
                    backgroundColor: Colors.white,
                    height: 50,
                    width: 50,
                    onPress: () {},
                    icon: SvgPicture.asset(
                      AppConst.iconWind,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
