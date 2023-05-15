import 'dart:math';

import 'package:dio/dio.dart';
import 'package:new_app/model/character_model_classes.dart';

final dio = Dio();
int? number;

randomNumber() {
  var intValue = Random().nextInt(40) + 1;
  return intValue;
}

Future<CharacterModelOne?> getHttpOne() async {
  Response response = await dio.get(
    'https://swapi.dev/api/people/$number',
  );
  final result = CharacterModelOne.fromJson(
    response.data as Map<String, dynamic>,
  );
  return result;
}

Future<CharacterModelTwo?> getHttpTwo() async {
  Response response = await dio.get(
    'https://swapi.dev/api/people/$number',
  );
  final result = CharacterModelTwo.fromJson(
    response.data as Map<String, dynamic>,
  );
  return result;
}

Future<CharacterModelThree?> getHttpThree() async {
  Response response = await dio.get('https://swapi.dev/api/people/$number');
  final result =
      CharacterModelThree.fromJson(response.data as Map<String, dynamic>);
  return result;
}
