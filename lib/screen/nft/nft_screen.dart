import 'package:flutter/material.dart';
import 'package:nftapp/constants/constants.dart';
import 'package:nftapp/provider/bottom_bar/bottom_bar_provider.dart';
import 'package:nftapp/screen/nft/search_screen.dart';
import 'package:provider/provider.dart';
import '../../widget/nft_home/nft_bottom_bar.dart';
import 'home_screen.dart';

class NftScreen extends StatefulWidget {
  const NftScreen({super.key});

  @override
  State<NftScreen> createState() => _NftScreenState();
}

class _NftScreenState extends State<NftScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        key: UniqueKey(),
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
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: kDefaultPadding,
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
                    return NftBottomBar(
                      index: value.index,
                      onTab: (index) => Provider.of<BottomBarProvider>(
                          context,
                          listen: false)
                          .onNavigate(index),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
