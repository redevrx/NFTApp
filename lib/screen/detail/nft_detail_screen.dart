import 'package:flutter/material.dart';
import 'package:nftapp/constants/constants.dart';
import 'package:nftapp/model/nft_model.dart';
import '../../widget/nft_detail/detail_card.dart';
import '../../widget/nft_detail/detail_title.dart';

class NftDetailScreen extends StatelessWidget {
  final NftModel nft;
  const NftDetailScreen({Key? key, required this.nft}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(.5),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          children: [
            /// title bar
            SizedBox(
              height: MediaQuery.of(context).padding.top,
            ),
            DetailTitle(nft: nft),
            SizedBox(
              height: MediaQuery.of(context).padding.top / 2,
            ),
            Expanded(
              flex: 1,
              child: DetailCard(nft: nft, hashCode: hashCode),
            )
          ],
        ),
      ),
    );
  }
}


