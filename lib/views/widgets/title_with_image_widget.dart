import 'package:flutter/material.dart';

import '../../models/app_const_model.dart';

class TitleWidthImage extends StatelessWidget {
  const TitleWidthImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Hi Uishopy!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        Image.asset(
          AppConst.imgLogo,
          height: 70,
        )
      ],
    );
  }
}
