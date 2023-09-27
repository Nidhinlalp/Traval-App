import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:traval_app/config/style/colors.dart';

class FlotinButton extends StatelessWidget {
  const FlotinButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ZoomIn(
      duration: const Duration(milliseconds: 250),
      child: Container(
        width: 60,
        height: 60,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              kgredintColor1,
              kgredintColor2,
            ],
          ),
        ),
        child: Center(
          child: Image.asset(
            'assets/icons/airplain.png',
            width: 30,
          ),
        ),
      ),
    );
  }
}
