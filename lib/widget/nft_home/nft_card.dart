import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nftapp/model/nft_model.dart';
import 'package:nftapp/screen/detail/nft_detail_screen.dart';
import 'package:nftapp/screen/nft/nft_screen.dart';
import 'package:paralax/paralax.dart';
import '../../constants/constants.dart';

class NftCard extends StatelessWidget {
  final NftModel data;
  const NftCard({
    Key? key, required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding * 1.5),
      child: Stack(
        children: [
          GestureDetector(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_)=> NftDetailScreen(nft: data))),
            child: Hero(
              tag: data.hashCode,
              child: ParalaxContainer(
                type: ParalaxType.NETWORK,
                imageUrl:
                data.image,
                aspectRatio: 4 / 3,
              ),
            ),
          ),
          Positioned(
              bottom: 6.0,
              left: 2.0,
              right: 2.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(kDefaultPadding),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaY: 10.0, sigmaX: 10.0),
                  child: Container(
                    height: kHeight * 1.2,
                    width: double.maxFinite,
                    padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding * 1.5),
                    color: Colors.black.withOpacity(.5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(data.title,
                                style: GoogleFonts.roboto(
                                    textStyle: Theme.of(context)
                                        .textTheme
                                        .headline5
                                        ?.copyWith(color: Colors.white))),
                            Row(
                              children: [
                                const Icon(
                                  Icons.monetization_on,
                                  color: Colors.white,
                                  size: kIconSize,
                                ),
                                Text(data.subTitle,
                                    style: GoogleFonts.roboto(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.copyWith(color: Colors.white))),
                              ],
                            )
                          ],
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "${data.descrip}\n${data.buy}",
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.roboto(
                                  textStyle: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(color: Colors.black,fontWeight: FontWeight.bold)),
                            ))
                      ],
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}