import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nftapp/constants/constants.dart';
import 'package:nftapp/util/nft_data.dart';
import 'package:nftapp/widget/glass_box.dart';

import '../../widget/nft_search/search_card.dart';

class SearchScreen extends StatelessWidget {
  final callback onTab;
  const SearchScreen({Key? key, required this.onTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /**
         * search title nft
         */
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () => onTab(0),
                  child: GlassBox(
                    width: kHeight / 1.2,
                    height: kHeight / 1.2,
                    color: Colors.black.withOpacity(.5),
                    child: const Center(
                      child: Icon(
                        Icons.arrow_back_ios_new_sharp,
                        color: Colors.white,
                        size: kIconSize,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: kDefaultPadding),
                Text(
                  "Discover",
                  style: GoogleFonts.roboto(
                      textStyle: Theme.of(context)
                          .textTheme
                          .headline4
                          ?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                )
              ],
            ),
            const Icon(
              Icons.menu,
              color: Colors.white,
              size: kIconSize * 1.5,
            )
          ],
        ),
        const SizedBox(
          height: kDefaultPadding * 2,
        ),
        /**
         * search box
         */
        TextField(
          style: const TextStyle(color: Colors.grey),
          decoration: InputDecoration(
            hintStyle: const TextStyle(color: Colors.grey),
            hintText: "Search anything",
            suffixIcon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.grey, width: 2.0),
                borderRadius: BorderRadius.circular(kDefaultPadding * 2)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.grey, width: 2.0),
                borderRadius: BorderRadius.circular(kDefaultPadding * 2)),
          ),
        ),
        /**
         * search card nft
         */
        SizedBox(
          height: MediaQuery.of(context).size.height * .68,
          width: double.maxFinite,
          child: ListView.builder(
            itemCount: nftList.length,
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return SearchCard(data: nftList[index], index: index,);
            },
          ),
        ),
      ],
    );
  }
}

