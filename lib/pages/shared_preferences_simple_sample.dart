import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesSimpleSample extends StatefulWidget {
  const SharedPreferencesSimpleSample({Key? key}) : super(key: key);
  static const String id = 'simple_shared_preferences';

  @override
  _SharedPreferencesSimpleSampleState createState() => _SharedPreferencesSimpleSampleState();
}

class _SharedPreferencesSimpleSampleState extends State<SharedPreferencesSimpleSample> {
  String myName = '';

  void _storeName(String name) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('name', name);
  }

  Future<String?> _loadName() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('name');
  }

  void _setName(String name){
    setState(() {
      myName = name;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: CupertinoColors.systemGrey,
              child: const Text('Store Name'),
              onPressed: (){
                _storeName('Khurshidbek');
              },
            ),
            MaterialButton(
              color: CupertinoColors.systemGrey,
              child: const Text('Load Name'),
              onPressed: (){
                _loadName().then((name) => {
                  _setName(name!)
                });
              },
            ),
            const SizedBox(height: 15),
            Text('Name: $myName')
          ],
        ),
      ),
    );
  }
}
