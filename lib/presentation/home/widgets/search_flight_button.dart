import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:traval_app/config/style/colors.dart';
import 'package:traval_app/presentation/home/widgets/on_sale_buton.dart';

class SearchFlictButton extends StatelessWidget {
  const SearchFlictButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ZoomIn(
      duration: const Duration(milliseconds: 400),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Container(
          height: 59,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                kgredintColor1,
                kgredintColor2,
              ],
            ),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/icons/airplain.png',
                    width: 30,
                  ),
                  const SizedBox(width: 7),
                  const Text(
                    'SEARCH FLIGHTS',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const OnSaleButton()
            ],
          ),
        ),
      ),
    );
  }
}
