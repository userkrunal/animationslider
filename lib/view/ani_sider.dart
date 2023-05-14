import 'package:animationslider/view/carosel_provider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  SliderProvider? spT;
  SliderProvider? spF;
  @override
  Widget build(BuildContext context) {
    spT=Provider.of<SliderProvider>(context,listen: true);
    spF=Provider.of<SliderProvider>(context,listen: false);
    return SafeArea(child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
      CarouselSlider.builder(
      itemCount: spF!.sliderList.length,
        itemBuilder: (context, index, realIndex) {
          return Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              height: 70.h,
              width: 100.w,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: AssetImage("${spF!.sliderList[index]}"),
                      fit: BoxFit.fill)),
            ),
          );
        },
        options: CarouselOptions(
          scrollDirection: Axis.horizontal,
          autoPlay: true,
          enableInfiniteScroll: true,
          autoPlayInterval: Duration(seconds: 2),
          onPageChanged: (index, reason) {
            return spF!.changslider(index);
          },
        ),
      ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: spF!.sliderList
              .asMap()
              .entries
              .map(
                (e) => Container(
                margin: EdgeInsets.all(5),
                height: 2.h,
                width: 2.h,
                decoration: BoxDecoration(

                    color: spT!.sliderindex == e.key ? Colors.red : Colors.red.shade50,

                    shape: BoxShape.circle)),
          )
              .toList(),
        ),
      ],
    ),
    ));
  }
}
