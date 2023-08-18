import 'package:flutter/material.dart';
import 'package:listapp/cards.dart';

List<Widget> Cardcons = [
  const Cardpreset(
    cardBorderColor: Colors.red,
    imageAsset: 'assets/images/google.png',
    tileBackgroundColor: Colors.white,
    tileBorderColor: Colors.red,
    title: 'Google',
  ),
  const Cardpreset(
      cardBorderColor: Colors.black,
      tileBorderColor: Colors.black,
      tileBackgroundColor: Colors.white,
      imageAsset: 'assets/images/microsoft.png',
      title: 'Microsoft'),
  const Cardpreset(
      cardBorderColor: Colors.yellow,
      tileBorderColor: Colors.yellow,
      tileBackgroundColor: Colors.white,
      imageAsset: 'assets/images/apple.png',
      title: 'Apple'),
  const Cardpreset(
      cardBorderColor: Colors.purple,
      tileBorderColor: Colors.purple,
      tileBackgroundColor: Colors.white,
      imageAsset: 'assets/images/flipkart.png',
      title: 'Flipkart'),
  const Cardpreset(
      cardBorderColor: Colors.teal,
      tileBorderColor: Colors.teal,
      tileBackgroundColor: Colors.white,
      imageAsset: 'assets/images/amazon.png',
      title: 'Amazon'),
  const Cardpreset(
      cardBorderColor: Colors.indigo,
      tileBorderColor: Colors.indigo,
      tileBackgroundColor: Colors.white,
      imageAsset: 'assets/images/kite.png',
      title: 'Kite'),
  const Cardpreset(
      cardBorderColor: Color.fromARGB(255, 56, 35, 27),
      tileBorderColor: Color.fromARGB(255, 56, 35, 27),
      tileBackgroundColor: Colors.white,
      imageAsset: 'assets/images/samsung.png',
      title: 'Samsung')
];
