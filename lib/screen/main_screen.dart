import 'package:flutter/material.dart';
import 'package:new_app/model/character_model.dart';
import 'package:new_app/model/character_model_classes.dart';
import 'package:new_app/model/character_model_data.dart';
import 'package:new_app/widget/character_info.dart';
import 'package:new_app/widget/row_widger.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  CharacterModel? model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CharacterInfo(
            model: model,
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () async {
                  number = randomNumber();
                  model = await getHttpOne();
                  setState(() {});
                },
                child: const Text('mass+height'),
              ),
              ElevatedButton(
                onPressed: () async {
                  number = randomNumber();
                  model = await getHttpTwo();
                  setState(() {});
                },
                child: const Text('colors'),
              ),
              ElevatedButton(
                onPressed: () async {
                  number = randomNumber();
                  model = await getHttpThree();
                  setState(() {});
                },
                child: const Text('all properties'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
