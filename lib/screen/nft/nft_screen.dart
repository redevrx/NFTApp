import 'package:flutter/material.dart';
import 'package:nftapp/constants/constants.dart';
import 'package:nftapp/provider/bottom_bar/bottom_bar_provider.dart';
import 'package:nftapp/screen/nft/search_screen.dart';
import 'package:provider/provider.dart';
import '../../widget/nft_home/nft_bottom_bar.dart';
import 'home_screen.dart';

class NftScreen extends StatelessWidget {
  const NftScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.topRight,
                  colors: [
                Colors.black.withOpacity(.95),
                Colors.black.withOpacity(.8)
              ])),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).padding.top,
                ),
                /**
                 * stack page index
                 */
                Consumer<BottomBarProvider>(
                  builder: (BuildContext context, value, Widget? child) {
                    return IndexedStack(
                      index: value.index != 0 && value.index != 1
                          ? 0
                          : value.index,
                      children: [
                        const HomeScreen(),
                        SearchScreen(
                          onTab: (index) => Provider.of<BottomBarProvider>(
                                  context,
                                  listen: false)
                              .onNavigate(index),
                        ),
                      ],
                    );
                  },
                ),
                /**
                 * bottom navigation bar
                 */
                Consumer<BottomBarProvider>(
                  builder: (BuildContext context, value, Widget? child) {
                    return Align(
                      alignment: Alignment.bottomCenter,
                      child: NftBottomBar(
                        index: value.index,
                        onTab: (index) => Provider.of<BottomBarProvider>(
                                context,
                                listen: false)
                            .onNavigate(index),
                      ),
                    );
                  },
                  child: const SizedBox(),
                )
              ],
            ),
          ),
        ),
        // bottomNavigationBar: const NftBottomBar(),
      ),
    );
  }
}
