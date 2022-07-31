import 'package:flutter/material.dart';

import 'actiont_side.dart';
import 'box_title_price.dart';
import 'slide.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.70 >= 400 ? size.height * 0.70 : 400,
            child: SafeArea(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  ActionSide(),
                  Expanded(child: SliderImage()),
                ],
              ),
            ),
          ),
          BoxTitlePrice(
            title: 'Angleica',
            country: 'Rusia',
            price: '\$440',
            description: [
              TextSpan(
                text: 'Lorem Ipsum ',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              const TextSpan(
                  text:
                      ''' is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. '''),
            ],
          ),
        ],
      ),
    );
  }
}
