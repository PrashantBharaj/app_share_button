import 'dart:convert';
import 'dart:io';

import 'package:app_share_button/line_chart/line_chart.dart';
import 'package:app_share_button/line_chart/line_chart_sample2.dart';
import 'package:app_share_button/pie_chart/pie_chart.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;

void main() {
  // runApp(const MyApp());
  runApp(
    const MaterialApp(
      home: Scaffold(
        // body: PieChartSample2(),
        // body: LineChartSample1(),
        body: Center(child: LineChartSample2()),
      ),
    ),
  );
}

/*class MyApp extends StatefulWidget {
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
  String ipAddress = "";
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                ipAddress
              ),
              TextButton(onPressed: () async {
                // var ip = jsonDecode(
                //     (await http.get(Uri.parse('https://ip.seeip.org/geoip/')))
                //     .body)["ip"].toString();
                var ip = (await http.get(Uri.parse('http://api.ipify.org/'))).body.toString();
                setState(() {
                  ipAddress = ip;
                });
              }, child: const Text("get ip"),),
            ],
          ),
        ),
      ),
    );
  }
}*/
