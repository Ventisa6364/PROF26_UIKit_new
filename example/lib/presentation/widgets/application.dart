import 'package:example/presentation/pages/test_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prof26_uikit/prof26_uikit.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(376, 832),
      child: MaterialApp(
        theme: ThemeData.light().copyWith(
          extensions: [CustomTheme(palette: LightPalette())],
        ),
        darkTheme: ThemeData.dark().copyWith(
          extensions: [CustomTheme(palette: DarkPalette())],
        ),
        debugShowCheckedModeBanner: false,
        home: TestPage(),
      ),
    );
  }
}
