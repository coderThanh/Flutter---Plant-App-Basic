import 'package:flutter/material.dart';

import '../../../../models/app_const_model.dart';

class BoxTitlePrice extends StatelessWidget {
  const BoxTitlePrice(
      {Key? key,
      required this.title,
      this.price,
      this.country,
      this.description})
      : super(key: key);

  final String title;
  final String? country;
  final String? price;
  final List<TextSpan>? description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppConst.padding),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                        height: 1.1,
                      ),
                    ),
                    const SizedBox(height: AppConst.padding * 0.5),
                    Text(
                      country ?? '',
                      style: TextStyle(
                        height: 1.2,
                        color: AppConst.primary.withOpacity(0.6),
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                price ?? '',
                style: const TextStyle(
                    height: 1.7,
                    color: AppConst.primary,
                    fontWeight: FontWeight.w500,
                    fontSize: 25),
              )
            ],
          ),
          const SizedBox(height: AppConst.padding),
          Text.rich(
            TextSpan(children: description),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: AppConst.padding * 5),
        ],
      ),
    );
  }
}
