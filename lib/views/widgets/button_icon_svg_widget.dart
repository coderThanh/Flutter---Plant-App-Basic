import 'package:flutter/material.dart';

import '../../models/app_const_model.dart';

class ButtonIconSvg extends StatelessWidget {
  const ButtonIconSvg({
    Key? key,
    this.height,
    this.width,
    this.iconHeight,
    this.iconWidth,
    this.iconPadding,
    this.backgroundColor,
    this.boxDecoration,
    this.onPress,
    this.splashRadius,
    required this.icon,
  }) : super(key: key);

  final double? width;
  final double? height;
  final double? iconHeight;
  final double? iconWidth;
  final EdgeInsets? iconPadding;
  final Color? backgroundColor;
  final BoxDecoration? boxDecoration;
  final Widget icon;
  final VoidCallback? onPress;
  final double? splashRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: width,
      width: height,
      decoration: boxDecoration ??
          BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: AppConst.primary.withOpacity(0.2),
                blurRadius: 22,
                offset: const Offset(0, 10),
              ),
              const BoxShadow(
                offset: Offset(-10, -10),
                blurRadius: 20,
                color: AppConst.background,
              ),
            ],
            borderRadius: BorderRadius.circular(5),
          ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Material(
        color: backgroundColor ?? Colors.transparent,
        child: IconButton(
          onPressed: onPress,
          splashRadius: splashRadius,
          padding: iconPadding ?? const EdgeInsets.all(10),
          icon: icon,
        ),
      ),
    );
  }
}
