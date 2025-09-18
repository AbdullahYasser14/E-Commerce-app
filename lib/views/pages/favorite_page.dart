import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "favorite",
          style: Theme.of(
            context,
          ).textTheme.headlineLarge!.copyWith(fontSize: 60.sp),
        ),
      ),
    );
  }
}
