import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prof26_uikit/prof26_uikit.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TestPage extends StatelessWidget {
  TestPage({super.key});

  final _lightPalette = LightPalette();
  final _darkPalette = DarkPalette();

  @override
  Widget build(BuildContext context) {
    var theme = CustomTheme.of(context);
    return Scaffold(
      backgroundColor: theme.palette.background,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: MediaQuery.paddingOf(context),
          child: Column(
            crossAxisAlignment: .center,
            mainAxisAlignment: .start,
            children: [
              Row(
                mainAxisAlignment: .spaceEvenly,
                crossAxisAlignment: .start,
                children: [
                  Column(
                    children: [
                      Text(_lightPalette.runtimeType.toString()),
                      Container(
                        width: 75,
                        height: 75,
                        color: _lightPalette.background,
                      ),
                      Container(
                        width: 75,
                        height: 75,
                        color: _lightPalette.black,
                      ),
                      Container(
                        width: 75,
                        height: 75,
                        color: _lightPalette.block,
                      ),
                      Container(
                        width: 75,
                        height: 75,
                        color: _lightPalette.button,
                      ),
                      Container(
                        width: 75,
                        height: 75,
                        color: _lightPalette.buttonInactive,
                      ),
                      Container(
                        width: 75,
                        height: 75,
                        color: _lightPalette.border,
                      ),
                      Container(
                        width: 75,
                        height: 75,
                        color: _lightPalette.icon,
                      ),
                      Container(
                        width: 75,
                        height: 75,
                        color: _lightPalette.text,
                      ),
                      Container(
                        width: 75,
                        height: 75,
                        color: _lightPalette.textSecondary,
                      ),
                      Container(
                        width: 75,
                        height: 75,
                        color: _lightPalette.hint,
                      ),
                      Container(
                        width: 75,
                        height: 75,
                        color: _lightPalette.accent,
                      ),
                      Container(
                        width: 75,
                        height: 75,
                        color: _lightPalette.error,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(_darkPalette.runtimeType.toString()),
                      Container(
                        width: 75,
                        height: 75,
                        color: _darkPalette.background,
                      ),
                      Container(
                        width: 75,
                        height: 75,
                        color: _darkPalette.black,
                      ),
                      Container(
                        width: 75,
                        height: 75,
                        color: _darkPalette.block,
                      ),
                      Container(
                        width: 75,
                        height: 75,
                        color: _darkPalette.button,
                      ),
                      Container(
                        width: 75,
                        height: 75,
                        color: _darkPalette.buttonInactive,
                      ),
                      Container(
                        width: 75,
                        height: 75,
                        color: _darkPalette.border,
                      ),
                      Container(
                        width: 75,
                        height: 75,
                        color: _darkPalette.icon,
                      ),
                      Container(
                        width: 75,
                        height: 75,
                        color: _darkPalette.text,
                      ),
                      Container(
                        width: 75,
                        height: 75,
                        color: _darkPalette.textSecondary,
                      ),
                      Container(
                        width: 75,
                        height: 75,
                        color: _darkPalette.hint,
                      ),
                      Container(
                        width: 75,
                        height: 75,
                        color: _darkPalette.accent,
                      ),
                      Container(
                        width: 75,
                        height: 75,
                        color: _darkPalette.error,
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Text(theme.style.runtimeType.toString()),
                  Text(
                    'Nunito Bold 32',
                    style: theme.style.nunitoBold32.copyWith(
                      color: theme.palette.text,
                    ),
                  ),
                  Text(
                    'Nunito Medium 24',
                    style: theme.style.nunitoMedium24.copyWith(
                      color: theme.palette.text,
                    ),
                  ),
                  Text(
                    'Nunito Medium 22',
                    style: theme.style.nunitoMedium22.copyWith(
                      color: theme.palette.text,
                    ),
                  ),
                  Text(
                    'Nunito ExtraLight 20',
                    style: theme.style.nunitoExtraLight20.copyWith(
                      color: theme.palette.text,
                    ),
                  ),
                  Text(
                    'Nunito Medium 18',
                    style: theme.style.nunitoMedium18.copyWith(
                      color: theme.palette.text,
                    ),
                  ),
                  Text(
                    'Nunito Light 18',
                    style: theme.style.nunitoLight18.copyWith(
                      color: theme.palette.text,
                    ),
                  ),
                  Text(
                    'Nunito Medium 16',
                    style: theme.style.nunitoMedium16.copyWith(
                      color: theme.palette.text,
                    ),
                  ),
                  Text(
                    'Nunito Light 16',
                    style: theme.style.nunitoLight16.copyWith(
                      color: theme.palette.text,
                    ),
                  ),
                  Text(
                    'Nunito Medium 14',
                    style: theme.style.nunitoMedium14.copyWith(
                      color: theme.palette.text,
                    ),
                  ),
                  Text(
                    'Nunito Light 14',
                    style: theme.style.nunitoLight14.copyWith(
                      color: theme.palette.text,
                    ),
                  ),
                  Text(
                    'Nunito Regular 12',
                    style: theme.style.nunitoRegular12.copyWith(
                      color: theme.palette.text,
                    ),
                  ),
                  Text(
                    'Nunito Medium 11',
                    style: theme.style.nunitoMedium11.copyWith(
                      color: theme.palette.text,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text("CustomIconButton"),
                  SizedBox.fromSize(
                    size: .square(40.r),
                    child: CustomIconButton(
                      onPressed: () {
                        debugPrint('Custom icon button was pressed');
                      },
                      child: SvgPicture.asset(
                        'packages/prof26_uikit/assets/icons/keyboardBackspace.svg',
                        width: 24.r,
                        height: 24.r,
                        colorFilter: ColorFilter.mode(
                          theme.palette.icon,
                          .srcIn,
                        ),
                      ),
                    ),
                  ),
                  Text("CustomFilledButton"),
                  SizedBox.fromSize(
                    size: .new(336.w, 48.h),
                    child: CustomFilledButton.active(
                      onPressed: () {
                        debugPrint('Custom filled button was pressed');
                      },
                      theme: theme,
                      text: 'Войти',
                    ),
                  ),
                  SizedBox.fromSize(
                    size: .new(336.w, 48.h),
                    child: CustomFilledButton.active(
                      onPressed: null,
                      theme: theme,
                      text: 'Войти',
                    ),
                  ),
                  SizedBox.fromSize(
                    size: .new(336.w, 48.h),
                    child: CustomFilledButton.error(
                      onPressed: () {
                        debugPrint('Custom filled button was pressed');
                      },
                      theme: theme,
                      text: 'Войти',
                    ),
                  ),
                  SizedBox.fromSize(
                    size: .new(336.w, 48.h),
                    child: CustomFilledButton.simple(
                      onPressed: () {
                        debugPrint('Custom filled button was pressed');
                      },
                      theme: theme,
                      text: 'Войти',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
