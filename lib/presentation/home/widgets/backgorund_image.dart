import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:traval_app/presentation/home/screen/home_screen.dart';

class BagroundImage extends StatelessWidget {
  const BagroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: scrollNotifier,
      builder: (context, value, child) {
        return Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: ExactAssetImage('assets/images/food_picture.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: value == true
              ? null
              : BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.500),
                    ),
                  ),
                ),
        );
      },
    );
  }
}
