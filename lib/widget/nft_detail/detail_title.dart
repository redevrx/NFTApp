import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/constants.dart';
import '../../model/nft_model.dart';

class DetailTitle extends StatelessWidget {
  const DetailTitle({
    Key? key,
    required this.nft,
  }) : super(key: key);

  final NftModel nft;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).padding.top / 2,
            ),
            Text(
              nft.title,
              style: GoogleFonts.roboto(
                  textStyle: Theme.of(context)
                      .textTheme
                      .headline4
                      ?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            ),
            Row(
              children: [
                const Icon(
                  Icons.monetization_on,
                  color: Colors.white,
                  size: kIconSize,
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(left: kDefaultPadding / 2),
                  child: Text(
                    nft.subTitle,
                    style: GoogleFonts.roboto(
                        textStyle: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(color: Colors.white)),
                  ),
                )
              ],
            )
          ],
        ),
        InkWell(
          onTap: () => Navigator.pop(context),
          child: Container(
            padding: const EdgeInsets.all(kDefaultPadding / 2),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.12),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.close,
              color: Colors.white,
              size: kIconSize * 1.2,
            ),
          ),
        )
      ],
    );
  }
}