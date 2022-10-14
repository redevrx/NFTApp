import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/constants.dart';
import '../../model/nft_model.dart';
import '../../screen/detail/nft_detail_screen.dart';
import '../../util/nft_data.dart';

class SearchCard extends StatelessWidget {
  final NftModel data;
  final int index;

  const SearchCard({
    Key? key,
    required this.data, required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Stack(
        children: [
          GestureDetector(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_)=> NftDetailScreen(nft: data))),
            child: AspectRatio(
              aspectRatio: (index + 1) % 2 != 0 ? 3 / 4 : 16 / 9,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(kDefaultPadding),
                child: Image.network(
                  data.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: kDefaultPadding,
            left: kDefaultPadding * 1.5,
            child: PhysicalModel(
              clipBehavior: Clip.antiAlias,
              color: Colors.black.withOpacity(.5),
              borderRadius: BorderRadius.circular(kDefaultPadding),
              child: Padding(
                padding: const EdgeInsets.all(kDefaultPadding / 2),
                child: Text(
                  nftList[0].time,
                  style: GoogleFonts.roboto(
                      textStyle: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: Colors.white)),
                ),
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
                                      ?.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
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