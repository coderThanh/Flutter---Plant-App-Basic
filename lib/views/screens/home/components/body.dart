import 'package:flutter/material.dart';

import '../../../../models/app_const_model.dart';
import '../../../widgets/header_circle_widget.dart';
import '../../../widgets/title_width_button_widget.dart';
import 'featured_plants.dart';
import 'recommened_list.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(), // stop scroll on top
      padding: const EdgeInsets.only(bottom: AppConst.margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderCircleWidget(),
          //
          const SizedBox(height: AppConst.margin),
          TitleWithButtonWidget(
            title: 'Recommened',
            button: 'More',
            onPress: () {},
            padding: const EdgeInsets.only(
                left: AppConst.padding,
                right: AppConst.padding,
                bottom: AppConst.padding / 1.5),
          ),
          const RecommenedListBlock(),
          //
          const SizedBox(height: AppConst.margin),
          TitleWithButtonWidget(
            title: 'Featured Plants',
            button: 'More',
            onPress: () {},
            padding: const EdgeInsets.only(
                left: AppConst.padding,
                right: AppConst.padding,
                bottom: AppConst.padding / 1.5),
          ),
          const FeaturedPlantsBlock(),
          //
          const SizedBox(height: AppConst.margin),
          TitleWithButtonWidget(
            title: 'Best Seller',
            button: 'More',
            onPress: () {},
            padding: const EdgeInsets.only(
                left: AppConst.padding,
                right: AppConst.padding,
                bottom: AppConst.padding / 1.5),
          ),
          const RecommenedListBlock(),
          const SizedBox(height: AppConst.padding),
        ],
      ),
    );
  }
}
