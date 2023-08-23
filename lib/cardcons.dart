import 'package:flutter/material.dart';
import 'package:listapp/cards.dart';

List<Widget> Cardcons = [
  const Cardpreset(
    cardBorderColor: Colors.red,
    imageAsset: 'assets/images/google.png',
    tileBackgroundColor: Color.fromARGB(255, 250, 228, 228),
    tileBorderColor: Colors.red,
    title: 'Google',
    url: 'https://www.google.com/',
  ),
  const Cardpreset(
    cardBorderColor: Colors.black,
    tileBorderColor: Colors.black,
    tileBackgroundColor: Color.fromARGB(255, 250, 228, 228),
    imageAsset: 'assets/images/microsoft.png',
    title: 'Microsoft',
    url: 'https://www.microsoft.com/en-in',
  ),
  const Cardpreset(
    cardBorderColor: Colors.yellow,
    tileBorderColor: Colors.yellow,
    tileBackgroundColor: Color.fromARGB(255, 250, 228, 228),
    imageAsset: 'assets/images/apple.png',
    title: 'Apple',
    url: 'https://www.apple.com/in/',
  ),
  const Cardpreset(
    cardBorderColor: Colors.purple,
    tileBorderColor: Colors.purple,
    tileBackgroundColor: Color.fromARGB(255, 250, 228, 228),
    imageAsset: 'assets/images/flipkart.png',
    title: 'Flipkart',
    url: 'https://www.flipkart.com/',
  ),
  const Cardpreset(
    cardBorderColor: Colors.teal,
    tileBorderColor: Colors.teal,
    tileBackgroundColor: Color.fromARGB(255, 250, 228, 228),
    imageAsset: 'assets/images/amazon.png',
    title: 'Amazon',
    url: 'https://www.amazon.in/',
  ),
  const Cardpreset(
    cardBorderColor: Colors.indigo,
    tileBorderColor: Colors.indigo,
    tileBackgroundColor: Color.fromARGB(255, 250, 228, 228),
    imageAsset: 'assets/images/kite.png',
    title: 'Kite',
    url: 'https://kite.zerodha.com/',
  ),
  const Cardpreset(
    cardBorderColor: Color.fromARGB(255, 56, 35, 27),
    tileBorderColor: Color.fromARGB(255, 56, 35, 27),
    tileBackgroundColor: Color.fromARGB(255, 250, 228, 228),
    imageAsset: 'assets/images/samsung.png',
    title: 'Samsung',
    url: 'https://www.samsung.com/in/',
  )
];
