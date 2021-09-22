import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';

Widget toast = Container(
  padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(25.0),
    color: Colors.greenAccent,
  ),
  child: Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(Icons.check),
      SizedBox(
        width: 12.0,
      ),
      Text("Deleted"),
    ],
  ),
);
