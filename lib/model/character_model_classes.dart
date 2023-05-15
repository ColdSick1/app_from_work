import 'character_model.dart';

class CharacterModelOne extends CharacterModel {
  final String mass;
  final String height;

  CharacterModelOne(
      {required this.mass, required this.height, required super.name});
  // : super(name: '');

  factory CharacterModelOne.fromJson(Map<String, dynamic> json) {
    return CharacterModelOne(
      name: json['name'],
      mass: json['mass'],
      height: json['height'],
    );
  }
}

class CharacterModelTwo extends CharacterModel {
  final String skinColor;
  final String eyeColor;
  final String hairColor;

  CharacterModelTwo(
      {required this.eyeColor,
      required this.hairColor,
      required this.skinColor,
      required super.name});

  factory CharacterModelTwo.fromJson(Map<String, dynamic> json) {
    return CharacterModelTwo(
      name: json['name'],
      hairColor: json['hair_color'],
      eyeColor: json['eye_color'],
      skinColor: json['skin_color'],
    );
  }
}

class CharacterModelThree extends CharacterModel {
  final String mass;
  final String height;
  final String skinColor;
  final String eyeColor;
  final String hairColor;

  CharacterModelThree({
    required this.mass,
    required this.height,
    required this.skinColor,
    required this.eyeColor,
    required this.hairColor,
    required super.name,
  });

  factory CharacterModelThree.fromJson(Map<String, dynamic> json) {
    return CharacterModelThree(
      mass: json['mass'],
      height: json['height'],
      skinColor: json['skin_color'],
      hairColor: json['hair_color'],
      eyeColor: json['eye_color'],
      name: json['name'],
    );
  }
}
