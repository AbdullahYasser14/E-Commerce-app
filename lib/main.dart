import 'package:ecommerce_app/views/pages/custom_bottom_nav_bar.dart';
import 'package:ecommerce_app/views/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(510, 910),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'E Commerce app',
          theme:
              ThemeData(
                textTheme: Typography.englishLike2018.apply(
                  fontSizeFactor: 1.0,
                ),
              ).copyWith(
                textTheme: Theme.of(
                  context,
                ).textTheme.apply(fontSizeFactor: 1.sp),
              ),
          home: child,
        );
      },
      child: const CustomBottomNavBar(),
    );
  }
}
