import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:traval_app/config/style/colors.dart';
import 'package:traval_app/presentation/home/widgets/backgorund_image.dart';
import 'package:traval_app/presentation/home/widgets/titel.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      centerTitle: false,
      systemOverlayStyle:
          const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
      expandedHeight: 630.0,
      backgroundColor: Colors.white,
      elevation: 0.0,
      pinned: true,
      stretch: true,
      flexibleSpace: const FlexibleSpaceBar(
        titlePadding: EdgeInsetsDirectional.only(start: 0, bottom: 30.0),
        title: Titile(),
        background: BagroundImage(),
        stretchModes: [
          StretchMode.blurBackground,
          StretchMode.zoomBackground,
        ],
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(0.0),
        child: Container(
          height: 40.0,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(70.0),
              topRight: Radius.circular(70.0),
            ),
          ),
          child: Container(
            width: 50.0,
            height: 7.0,
            decoration: BoxDecoration(
              color: kOutlineColor,
              borderRadius: BorderRadius.circular(100.0),
            ),
          ),
        ),
      ),
      leadingWidth: 80.0,
      leading: const Icon(
        Icons.arrow_downward,
        size: 35,
      ),
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 15),
          child: const Icon(
            Icons.favorite_border,
            size: 35,
          ),
        ),
      ],
    );
  }
}
