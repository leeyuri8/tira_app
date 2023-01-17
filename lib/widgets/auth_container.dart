import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tira_app/constants/colors.dart';
import 'package:tira_app/widgets/button.dart';
import 'package:toggle_switch/toggle_switch.dart';

class AuthContainer extends StatelessWidget {
  double height;
  Column column;

  AuthContainer({required this.height, required this.column, Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        decoration: BoxDecoration(
          color: white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.16),
              blurRadius: 12,
              offset: Offset(0, 5), // Shadow position
            ),
          ],
          borderRadius: BorderRadius.circular(40),
        ),
        child: Padding(
            padding: const EdgeInsets.only(top: 30, right: 30, left: 30),
            child: column));
  }
}
