import 'package:flutter/material.dart';
import 'package:traval_app/config/style/colors.dart';

class TopSlights extends StatelessWidget {
  const TopSlights({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 80,
          width: 150,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage(
                "assets/images/paris.webp",
              ),
              fit: BoxFit.cover,
            ),
            color: kOutlineColor,
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        const SizedBox(width: 10.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Musee du Louvre',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                'Top Choice museum in Louvre Less Moel',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: kSecondaryTextColor,
                      letterSpacing: 0,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
