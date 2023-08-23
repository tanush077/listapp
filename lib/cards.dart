import 'package:flutter/material.dart';

class Cardpreset extends StatelessWidget {
  final Color cardBorderColor;
  final Color tileBorderColor;
  final Color tileBackgroundColor;
  final String imageAsset;
  final String title;

  const Cardpreset({
    super.key,
    required this.cardBorderColor,
    required this.tileBorderColor,
    required this.tileBackgroundColor,
    required this.imageAsset,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: cardBorderColor, width: 3),
          borderRadius: const BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: tileBorderColor),
                borderRadius: const BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              tileColor: Colors.white,
              leading: Image.asset(imageAsset),
              title: Text(
                title,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              trailing: const Icon(
                Icons.arrow_right,
                size: 50,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
