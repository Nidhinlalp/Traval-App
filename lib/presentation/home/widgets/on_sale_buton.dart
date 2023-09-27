import 'package:flutter/material.dart';
import 'package:traval_app/config/style/colors.dart';

class OnSaleButton extends StatelessWidget {
  const OnSaleButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 100,
      decoration: BoxDecoration(
        color: kButtonColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Center(
        child: Text(
          'ON SALE',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
