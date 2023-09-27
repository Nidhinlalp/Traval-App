import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:traval_app/config/style/colors.dart';
import 'package:traval_app/presentation/home/screen/home_screen.dart';

class Titile extends StatelessWidget {
  const Titile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: scrollNotifier,
      builder: (context, value, _) {
        return value == false
            ? FadeInUp(
                child: const SafeArea(
                  child: Stack(
                    children: [
                      Positioned(
                        left: 130,
                        top: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Eiffel Tower",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                              textScaleFactor: 1.0,
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                Text(
                                  'Paris,France',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 13,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            : Stack(
                children: [
                  Positioned(
                    left: 10,
                    bottom: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 24,
                          width: 73,
                          decoration: BoxDecoration(
                            color: kButtonColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Center(
                            child: Text(
                              'ON SALE',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          textScaleFactor: 1.3,
                          'Eiffel Tower',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.white,
                              size: 16,
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Paris,France',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              );
      },
    );
  }
}
