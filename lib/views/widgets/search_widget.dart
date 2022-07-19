import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../models/app_const_model.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: prefer_const_constructors
      padding: EdgeInsets.symmetric(
        horizontal: AppConst.padding,
        vertical: 10,
      ),
      // ignore: prefer_const_constructors
      margin: EdgeInsets.symmetric(
        horizontal: AppConst.padding,
      ),
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 10),
            blurRadius: 50,
            color: AppConst.primary.withOpacity(0.3),
          )
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            child: TextField(
              maxLines: 1,
              maxLength: 50,
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(
                  color: AppConst.primary.withOpacity(0.5),
                  height: 1,
                ),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                counterText: '',
              ),
            ),
          ),
          const SizedBox(width: 10),
          GestureDetector(
            onTap: () {},
            child: SvgPicture.asset(AppConst.iconSearch),
          ),
        ],
      ),
    );
  }
}
