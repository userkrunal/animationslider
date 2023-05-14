import 'package:animationslider/view/ani_sider.dart';
import 'package:animationslider/view/carosel_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

void main()
{
  runApp(
    Sizer(builder: (context, orientation, deviceType) {
      return ChangeNotifierProvider(
        create: (context) => SliderProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            '/':(context) =>HomeScreen(),
          },
        ),
      );
    },)
  );
}