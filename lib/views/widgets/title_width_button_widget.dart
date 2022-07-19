import 'package:flutter/material.dart';

import '../../models/app_const_model.dart';

class title_with_button_widget extends StatefulWidget {
  String title;
  String button;
  VoidCallback onPress;

  title_with_button_widget({
    Key? key,
    required this.title,
    required this.button,
    required this.onPress,
  }) : super(key: key);

  @override
  State<title_with_button_widget> createState() =>
      _title_with_button_widgetState();
}

class _title_with_button_widgetState extends State<title_with_button_widget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppConst.padding),
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
              child: Text(
                widget.button,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.white,
                  height: 1,
                ),
              ),
              style: TextButton.styleFrom(
                backgroundColor: AppConst.primary,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                primary: Colors.white10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
