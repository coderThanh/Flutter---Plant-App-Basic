import 'package:flutter/material.dart';

import '../../models/app_const_model.dart';
import '../../models/app_function_model.dart';

class ProductBoxDefault extends StatelessWidget {
  const ProductBoxDefault({
    Key? key,
    required this.size,
    required this.img,
    required this.tilte,
    required this.country,
    required this.price,
    this.margin,
    this.onPress,
  }) : super(key: key);

  final Size size;
  final String img, tilte, country, price;
  final VoidCallback? onPress;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: size.width * 0.4,
        margin: margin,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 10),
              blurRadius: 30,
              color: Colors.black.withOpacity(0.1),
            ),
          ],
        ),
        child: Column(
          children: [
            // Box img
            Container(
              height:
                  AppFunc.getHeightByRatio(width: size.width * 0.4, ratio: 125),
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(7),
                  topRight: Radius.circular(7),
                ),
              ),
              child: Image.asset(
                img,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),

            // Box text
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(7),
                  bottomRight: Radius.circular(7),
                ),
              ),
              padding: const EdgeInsets.only(
                  top: 10, left: 10, right: 10, bottom: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tilte,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 7),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          country,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: AppConst.primary.withOpacity(0.6),
                              fontSize: 14,
                              height: 1.15),
                        ),
                      ),
                      const SizedBox(width: 7),
                      Expanded(
                        child: Text(
                          '\$$price',
                          textAlign: TextAlign.right,
                          style: const TextStyle(
                            color: AppConst.primary,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            height: 1.15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
