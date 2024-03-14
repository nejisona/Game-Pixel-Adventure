import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:plastic_war/pixel_adventure.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); //this will ensure that the first flutter will initalized then the othe things will hapen
  await Flame.device
      .fullScreen(); //It will ensure that our app is on full screen
  await Flame.device
      .setLandscape(); //It will ensure that we are always on landscape mode
  PixleAdventure game = PixleAdventure();
  runApp(GameWidget(
      game: kDebugMode
          ? PixleAdventure()
          : game)); //I am using this because in development I want app to restart very time
}
