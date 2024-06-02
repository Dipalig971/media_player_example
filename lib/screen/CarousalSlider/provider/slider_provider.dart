
import 'package:flutter/material.dart';

class CarouselSliderProvider extends ChangeNotifier{
  int imgindex = 0;

  void changeImage(int index){
    imgindex = index;
    notifyListeners();
  }
}
