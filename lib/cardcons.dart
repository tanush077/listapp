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
      title: 'Apple')
];
