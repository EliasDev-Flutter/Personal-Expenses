import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptativeButton extends StatelessWidget {
  final String label;
  final Function() onPressed;

  AdaptativeButton({
    this.label = '',
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(label),
            onPressed: onPressed,
            color: Colors.indigo,
            padding: EdgeInsets.symmetric(horizontal: 20),
          )
        : ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.indigo,
              textStyle: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: onPressed,
            child: Text(label),
          );
  }
}
