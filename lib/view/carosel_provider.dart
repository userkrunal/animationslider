import 'package:flutter/foundation.dart';

class SliderProvider extends ChangeNotifier
{

  List sliderList=[
    "assets/images/img.png",
    "assets/images/img_1.png",
    "assets/images/img_2.png",
    "assets/images/img_3.png",
    "assets/images/img_4.png",
  ];

  int sliderindex=0;
  void changslider(int index)
  {
    sliderindex=index;
    notifyListeners();
  }
}