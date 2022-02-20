import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:usa_cases_shared_preferance/services/preferences_service_sample.dart';

class SharedPreferencesABitAdvancedSample extends StatefulWidget {
  const SharedPreferencesABitAdvancedSample({Key? key}) : super(key: key);
  static const String id = 'a_bit_advanced_shared_preferences';

  @override
  _SharedPreferencesABitAdvancedSampleState createState() => _SharedPreferencesABitAdvancedSampleState();
}

class _SharedPreferencesABitAdvancedSampleState extends State<SharedPreferencesABitAdvancedSample> {
  String myName = '';

  void _setName(String name){
    setState(() {
      myName = name;
    });
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    filled: true,
                    fillColor: Colors.grey.shade300,
                    prefixIcon: const Icon(
                      Icons.person,
                      color: Colors.blueGrey,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)
                    )
                ),
              ),
            ),
            const SizedBox(height: 10),
            MaterialButton(
              color: CupertinoColors.systemGrey,
              child: const Text('Store Name'),
              onPressed: (){
                Preferences.storeName(_controller.text);
              },
            ),
            MaterialButton(
              color: CupertinoColors.systemGrey,
              child: const Text('Load Name'),
              onPressed: (){
                Preferences.loadName().then((name) => {
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
