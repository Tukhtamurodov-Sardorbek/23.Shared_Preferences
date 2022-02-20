import 'package:flutter/material.dart';
import 'package:usa_cases_shared_preferance/pages/shared_preferences.dart';
import 'package:usa_cases_shared_preferance/pages/shared_preferences_a_bit_advanced_sample.dart';
import 'package:usa_cases_shared_preferance/pages/shared_preferences_simple_sample.dart';

import 'home_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        SharedPreferencesSimpleSample.id: (context) => const SharedPreferencesSimpleSample(),
        SharedPreferencesABitAdvancedSample.id: (context) => const SharedPreferencesABitAdvancedSample(),
        SharedPreferencesUseCase.id: (context) => const SharedPreferencesUseCase(),
      },
    );
  }
}
