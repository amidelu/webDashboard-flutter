import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_dashboard/site_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.mulishTextTheme(
          Theme.of(context).textTheme
        ).apply(
          bodyColor: Colors.black
        ),
        pageTransitionsTheme: const PageTransitionsTheme(builders: {
          TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder()
        }),
        primaryColor: Colors.blue
      ),
      home: const SiteLayout(),
    );
  }
}
