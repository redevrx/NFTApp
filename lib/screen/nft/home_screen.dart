import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../util/nft_data.dart';
import '../../widget/nft_home/nft_appbar.dart';
import '../../widget/nft_home/nft_card.dart';
import '../../widget/nft_home/nft_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const NftAppbar(),
        const SizedBox(height: kDefaultPadding),
        /**
         * title nft
         */
        const NftTitle(),
        /**
         * nft card
         */
        SizedBox(
          height: MediaQuery.of(context).size.height * .7,
          width: double.maxFinite,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: nftList.length,
            itemBuilder: (BuildContext context, int index) {
              return NftCard(data: nftList[index]);
            },
          ),
        )
      ],
    );
  }
}