import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Cardpreset extends StatelessWidget {
  final Color cardBorderColor;
  final Color tileBorderColor;
  final Color tileBackgroundColor;
  final String imageAsset;
  final String title;
  final String url;

  const Cardpreset({
    super.key,
    required this.cardBorderColor,
    required this.tileBorderColor,
    required this.tileBackgroundColor,
    required this.imageAsset,
    required this.title,
    required this.url,
  });

  _launchURLBrowser(String ur) async {
    if (await canLaunch(ur)) {
      await launch(ur);
    } else {
      throw 'Could not launch $ur';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
      width: 350,
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
              trailing: IconButton(
                alignment: Alignment.topLeft,
                icon: const Icon(Icons.arrow_right, size: 50),
                color: Colors.black,
                onPressed: () {
                  _launchURLBrowser(url);
                },
              ),
            )
          ],
        ),
      ),
    ));
  }
}
