import 'package:covid_19_eg/homa_page.dart';
import 'package:covid_19_eg/page/country_page.dart';
import 'package:covid_19_eg/page/fqsa_page.dart';
import 'package:flutter/material.dart';
import 'data_source.dart';
void main() async {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(

        fontFamily: 'mo3ty',
        primaryColor: primaryBlack,
      brightness:Brightness.dark
    ),
    home: HomePage(),
    routes: {
      'faqs': (BuildContext context) => faqspage(),
      '/countryp': (BuildContext context) => Countrypage(),
    },
  ) );
}