import 'dart:io';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String androidUrl =
      "https://play.google.com/store/apps/details?id=in.rangde.android.release";
  String iosUrl = "https://apps.apple.com/in/app/rang-de/id1475769579";
  late Uri url;

  @override
  void initState() {
    super.initState();
    url = Uri.parse(Platform.isAndroid ? androidUrl : iosUrl);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                color: Colors.green,
                child: TextButton(
                  onPressed: () async {
                    await launchUrl(url);
                  },
                  child: Text(
                    Platform.isAndroid ? "Go to playstore" : "Go to appstore",
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
