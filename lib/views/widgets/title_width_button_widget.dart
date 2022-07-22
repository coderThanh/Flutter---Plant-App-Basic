import 'package:flutter/material.dart';

import '../../models/app_const_model.dart';

class TitleWithButtonWidget extends StatefulWidget {
  final String title;
  final String button;
  final VoidCallback onPress;
  final EdgeInsets? padding;

  const TitleWithButtonWidget({
    Key? key,
    required this.title,
    required this.button,
    required this.onPress,
    this.padding,
  }) : super(key: key);

  @override
  State<TitleWithButtonWidget> createState() => _TitleWithButtonWidgetState();
}

class _TitleWithButtonWidgetState extends State<TitleWithButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              widget.title,
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .apply(overflow: TextOverflow.ellipsis),
              maxLines: 1,
            ),
          ),
          SizedBox(
            height: 30,
            child: TextButton(
              onPressed: widget.onPress,
              style: TextButton.styleFrom(
                backgroundColor: AppConst.primary,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                primary: Colors.white10,
              ),
              child: Text(
                widget.button,
                style: const TextStyle(
                  fontSize: 13,
                  color: Colors.white,
                  height: 1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
