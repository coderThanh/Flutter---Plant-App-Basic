import 'package:flutter/material.dart';

import '../../../../models/app_const_model.dart';

class BottomNavidatorBar extends StatelessWidget {
  const BottomNavidatorBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.transparent),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: size.width / 2,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: AppConst.primary,
                primary: Colors.white10,
                shadowColor: Colors.black,
                elevation: 30,
                padding: const EdgeInsets.symmetric(
                  horizontal: AppConst.padding,
                  vertical: AppConst.padding * 0.8,
                ),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0),
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topRight: Radius.circular(20)),
                ),
              ),
              child: const Text(
                'Buy Now',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          SizedBox(
            width: size.width / 2,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                primary: Colors.black.withOpacity(0.05),
                padding: const EdgeInsets.symmetric(
                  horizontal: AppConst.padding,
                  vertical: AppConst.padding * 0.8,
                ),
                shadowColor: Colors.black,
                elevation: 30,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topRight: Radius.circular(0)),
                ),
              ),
              child: const Text(
                'Contact',
                style: TextStyle(
                  color: AppConst.textBasic,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
