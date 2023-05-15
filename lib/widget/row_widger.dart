import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  final String category;
  final String response;
  const RowWidget({required this.category, required this.response, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(category),
        Text(response),
      ],
    );
  }
}
