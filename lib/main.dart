import 'package:flutter/material.dart';
import 'package:media_player_example/screen/CarousalSlider/provider/slider_provider.dart';
import 'package:media_player_example/screen/CarousalSlider/view/carousal_Slider_screen.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => CarouselSliderProvider(),)
    ],
      builder:(context, child) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CarouselSliderScreen(),
    );
  }
}
