import 'package:flutter/material.dart';
import 'package:new_app/model/character_model_classes.dart';
import 'package:new_app/widget/row_widger.dart';

import '../model/character_model.dart';

class CharacterInfo extends StatelessWidget {
  const CharacterInfo({super.key, required this.model});

  final CharacterModel? model;

  @override
  Widget build(BuildContext context) {
    if (model is CharacterModelOne) {
      return Column(
        children: [
          RowWidget(
            category: 'name',
            response: model!.name,
          ),
          RowWidget(
              category: 'height',
              response: (model as CharacterModelOne).height),
          RowWidget(
              category: 'mass', response: (model as CharacterModelOne).mass),
        ],
      );
    } else if (model is CharacterModelTwo) {
      return Column(
        children: [
          RowWidget(
            category: 'name',
            response: model!.name,
          ),
          RowWidget(
            category: 'skin color',
            response: (model as CharacterModelTwo).skinColor,
          ),
          RowWidget(
            category: 'eye color',
            response: (model as CharacterModelTwo).eyeColor,
          ),
          RowWidget(
            category: 'hair color',
            response: (model as CharacterModelTwo).hairColor,
          ),
        ],
      );
    } else if (model is CharacterModelThree) {
      return Column(
        children: [
          RowWidget(category: 'name', response: model!.name),
          RowWidget(
            category: 'height',
            response: (model as CharacterModelThree).height,
          ),
          RowWidget(
            category: 'mass',
            response: (model as CharacterModelThree).mass,
          ),
          RowWidget(
            category: 'skin color',
            response: (model as CharacterModelThree).skinColor,
          ),
          RowWidget(
            category: 'hair color',
            response: (model as CharacterModelThree).hairColor,
          ),
          RowWidget(
            category: 'eye color',
            response: (model as CharacterModelThree).eyeColor,
          ),
        ],
      );
    } else {
      return const Center(
        child: Text('нажмите на кнопку'),
      );
    }

    // return Column(
    //   children: [],
    // );
  }
}
