
<h1 align="center"> media_player_example💻</h1>

<h2 align="center">6.1 Carousal Slider with Custom Indicatore</h2>

Step 1.Add the connectivity_plus dependency to your pubspec.yaml file:

```yaml
dependencies:
  flutter:
    sdk: flutter
carousel_slider: ^4.2.1
```
Then run flutter pub get to install the dependency.

### usage

Step 2.Import the connectivity_plus package in your Dart file:
```
import 'package:carousel_slider/carousel_slider.dart';
```

Step 3.Here’s a simple example of how to use connectivity_plus to monitor network connectivity in a Flutter app.

```dart
import 'package:carousel_slider/carousel_slider.dart';

CarouselSlider(
  options: CarouselOptions(height: 400.0),
  items: [1,2,3,4,5].map((i) {
    return Builder(
      builder: (BuildContext context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 5.0),
          decoration: BoxDecoration(
            color: Colors.amber
          ),
          child: Text('text $i', style: TextStyle(fontSize: 16.0),)
        );
      },
    );
  }).toList(),
)
```
## Explanation

- CarouselSlider: The CarouselSlider widget displays the images. It has properties for auto-playing, enlarging the center page, and aspect ratio

- Custom Indicators: The Row widget below the CarouselSlider contains custom indicators. These indicators are Container widgets that change color based on the current index of the carousel.

<div align="center">
   <img src="https://github.com/Dipalig971/media_player_example/assets/143181151/8c49a112-281e-4954-b372-42a3b6e05339" width=22% height=33%>
  <img src="https://github.com/Dipalig971/media_player_example/assets/143181151/ef9067c2-dd8d-4897-ba34-a3eb8a7e5874" width=22% height=33%>
  <img src="https://github.com/Dipalig971/media_player_example/assets/143181151/65a99900-b49f-463b-afe8-bb3662dfd82c" width=22% height=33%>
  <video src = 'https://github.com/Dipalig971/media_player_example/assets/143181151/616a0c36-119d-464f-aee1-05ae560c6531'>
 </div>


