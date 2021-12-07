import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<Widget> word = [];

void loop(List<dynamic> wordsList){
  for(var words in wordsList){
    word.add(Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        words,
        style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontWeight: FontWeight.w900
        ),
      ),
    ));
  }
}