import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../models/app_const_model.dart';
import '../widgets/header_circle_widget.dart';
import '../widgets/recommened_list_widget.dart';
import '../widgets/title_width_button_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: homeAppBar(),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(), // stop scroll on top
        padding: const EdgeInsets.only(bottom: AppConst.margin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeaderCircleWidget(),
            const SizedBox(height: AppConst.margin),

            // Block Recomment
            TitleWithButtonWidget(
                title: 'Recommened', button: 'More', onPress: () {}),
            const SizedBox(height: AppConst.margin / 3),
            const RecommenedListWidget(),

            // Block Feature plant
            const SizedBox(height: AppConst.margin),
            TitleWithButtonWidget(
                title: 'Featured Plants', button: 'More', onPress: () {}),
            const SizedBox(height: AppConst.margin / 2.5),
          ],
        ),
      ),
    );
  }

  AppBar homeAppBar() {
    return AppBar(
      shadowColor: const Color.fromARGB(0, 0, 0, 0),
      backgroundColor: AppConst.primary,
      leading: Container(
        padding: const EdgeInsets.only(left: AppConst.padding),
        child: GestureDetector(
          onTap: (() {}),
          child: SvgPicture.asset(
            AppConst.iconMenu,
          ),
        ),
      ),
    );
  }
}
