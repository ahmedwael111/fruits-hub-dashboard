import 'package:flutter/material.dart';

void showSnakeBar(BuildContext context, String s, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(s), backgroundColor: color,));
  }


  