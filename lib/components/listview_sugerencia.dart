import 'package:flutter/material.dart';

var contieneSugerencias = ListView.builder(
    itemCount: 8,
    itemBuilder: (context, index) {
      return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
          height: 120,
          color: Colors.black12,
          ),
      );
    });
