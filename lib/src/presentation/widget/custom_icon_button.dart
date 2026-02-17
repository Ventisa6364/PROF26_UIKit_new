import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prof26_uikit/prof26_uikit.dart';

class CustomIconButton extends StatelessWidget {
  final Function()? onPressed;
  final Widget? child;

  const CustomIconButton({this.onPressed, this.child, super.key});

  @override
  Widget build(BuildContext context) {
    var theme = CustomTheme.of(context);

    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: theme.palette.block,
        padding: EdgeInsets.all(5.r),
        shape: RoundedRectangleBorder(borderRadius: .circular(10.r),
        ),
      ),

      child: child,
    );
  }
}
