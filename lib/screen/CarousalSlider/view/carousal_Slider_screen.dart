import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:media_player_example/screen/CarousalSlider/modal/slider_list.dart';
import 'package:provider/provider.dart';

import '../provider/slider_provider.dart';

final CarouselController controller = CarouselController();

class CarouselSliderScreen extends StatelessWidget {
  const CarouselSliderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Carousal Slider',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Consumer<CarouselSliderProvider>(
        builder: (context, sliderProvider, child) {
          return Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors:
                    imageList[sliderProvider.imgindex]['color'].cast<Color>(),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CarouselSlider(
                  items: imageList.map((item) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 60),
                          child: Stack(
                            children: [
                              Container(
                                  height: 530,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(item['img']),
                                    ),
                                  ),
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Text(
                                      item['text'],
                                      style: const TextStyle(
                                        fontSize: 30,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ],
                    );
                  }).toList(),
                  carouselController: controller,
                  options: CarouselOptions(
                    aspectRatio: 10 / 16,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      sliderProvider.changeImage(index);
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imageList.asMap().entries.map((entry) {
                    return GestureDetector(
                      onTap: () => controller.animateToPage(entry.key),
                      child: Container(
                        width: 12.0,
                        height: 12.0,
                        margin: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 4.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: (Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? Colors.white
                                  : Colors.black)
                              .withOpacity(sliderProvider.imgindex == entry.key
                                  ? 0.9
                                  : 0.4),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
