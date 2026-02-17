import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prof26_uikit/prof26_uikit.dart';

abstract class CustomBaseButton extends StatelessWidget {
  final CustomTheme theme;
  final String text;
  final Function()? onPressed;
  final TextStyle textStyle;
  final Color backgroundColor;
  final Color? disabledBackgroundColor;

  const CustomBaseButton({
    super.key,
    required this.theme,
    required this.text,
    this.onPressed,
    required this.textStyle,
    required this.backgroundColor,
    required this.disabledBackgroundColor,
  });

  @protected
  Color get borderColor;

  @protected
  EdgeInsets get padding;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        padding: padding,
        backgroundColor: backgroundColor,
        disabledBackgroundColor: disabledBackgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: .circular(10.r),
          side: .new(width: 1.r, color: borderColor),
        ),
      ),
      child: Text(text, style: textStyle),
    );
  }
}

class CustomFilledButton extends CustomBaseButton {
  const CustomFilledButton({
    super.key,
    required super.theme,
    required super.text,
    required super.textStyle,
    required super.backgroundColor,
    required super.disabledBackgroundColor,
    required super.onPressed,
  });

  @override
  Color get borderColor => theme.palette.border;

  @override
  EdgeInsets get padding => .all(13.r);

  CustomFilledButton.active({
    super.key,
    required super.theme,
    required super.text,
    required super.onPressed,
  }) : super(
         textStyle: theme.style.nunitoMedium16.copyWith(
           color: theme.palette.text,
         ),
         backgroundColor: theme.palette.button,
         disabledBackgroundColor: theme.palette.buttonInactive,
       );

  CustomFilledButton.error({
    super.key,
    required super.theme,
    required super.text,
    required super.onPressed,
  }) : super(
         textStyle: theme.style.nunitoMedium16.copyWith(
           color: theme.palette.error,
         ),
         backgroundColor: theme.palette.block,
         disabledBackgroundColor: null,
       );

  CustomFilledButton.simple({
    super.key,
    required super.theme,
    required super.text,
    required super.onPressed,
  }) : super(
         textStyle: theme.style.nunitoMedium16.copyWith(
           color: theme.palette.text,
         ),
         backgroundColor: theme.palette.block,
         disabledBackgroundColor: null,
       );
}
