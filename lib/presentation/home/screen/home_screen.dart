import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:traval_app/config/style/colors.dart';
import 'package:traval_app/presentation/home/widgets/app_bar_widget.dart';
import 'package:traval_app/presentation/home/widgets/center_card.dart';
import 'package:traval_app/presentation/home/widgets/floting_button.dart';
import 'package:traval_app/presentation/home/widgets/horizontal_list.dart';
import 'package:traval_app/presentation/home/widgets/search_flight_button.dart';
import 'package:traval_app/presentation/home/widgets/top_slights.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);
ScrollController _scrollController = ScrollController();

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.hasClients) {
        log(_scrollController.position.pixels.toString());
        scrollNotifier.value = _scrollController.position.pixels < 200;
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: ValueListenableBuilder(
          valueListenable: scrollNotifier,
          builder: (context, value, _) {
            return value == false
                ? const SearchFlictButton()
                : const FlotinButton();
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: (context, value, _) {
          return CustomScrollView(
            controller: _scrollController,
            slivers: <Widget>[
              // ----- > App Bar ------
              const AppBarWidget(),
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ------- > Horizontal list Screooll -----
                    HorizontalTowers(scrollController: _scrollController),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        children: [
                          const SizedBox(height: 8.0),
                          Text(
                            "Paris' monument-lined boulevards, museums, classical bestros os and boutiques are enhanced by a new wave of multmedia galleries, creative, creative winebars, design shops and tech start-ups",
                            maxLines: 4,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: kSecondaryTextColor,
                                  letterSpacing: 0,
                                ),
                          ),
                          const SizedBox(height: 10.0),
                          Center(
                            child: Text(
                              'READ MORE',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ),
                          const SizedBox(height: 10.0),
                          // ------- > Read More Under Card
                          const CenterCard(),
                          const SizedBox(height: 16.0),
                          Text(
                            'Top Sights',
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                          const SizedBox(height: 16.0),
                          // ----- > Top Sights Widget
                          const TopSlights(),
                          const SizedBox(height: 80.0),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
