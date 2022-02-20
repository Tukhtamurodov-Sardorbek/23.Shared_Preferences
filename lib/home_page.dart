import 'package:flutter/material.dart';
import 'package:usa_cases_shared_preferance/pages/shared_preferences.dart';
import 'package:usa_cases_shared_preferance/pages/shared_preferences_a_bit_advanced_sample.dart';
import 'package:usa_cases_shared_preferance/pages/shared_preferences_simple_sample.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _toPage(String id){
    Navigator.of(context).pushNamed(id);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20),
              MaterialButton(
                elevation: 10,
                minWidth: MediaQuery.of(context).size.width * 0.9,
                height: 52,
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
                color: Colors.blueGrey,
                child: const Text('Simple Shared Preferences', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                onPressed: (){
                  _toPage(SharedPreferencesSimpleSample.id);
                },
              ),
              const SizedBox(height: 20),
              MaterialButton(
                elevation: 10,
                minWidth: MediaQuery.of(context).size.width * 0.9,
                height: 52,
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
                color: Colors.blueGrey,
                child: const Text('A Bit Advanced Shared Preferences', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                onPressed: (){
                  _toPage(SharedPreferencesABitAdvancedSample.id);
                },
              ),
              const SizedBox(height: 20),
              MaterialButton(
                elevation: 10,
                minWidth: MediaQuery.of(context).size.width * 0.9,
                height: 52,
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
                color: Colors.blueGrey,
                child: const Text('Shared Preferences (Real Use Case)', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                onPressed: (){
                  _toPage(SharedPreferencesUseCase.id);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
