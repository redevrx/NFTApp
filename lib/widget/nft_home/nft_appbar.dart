import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/constants.dart';

class NftAppbar extends StatelessWidget {
  const NftAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.network(
                  "https://cdn0.iconfinder.com/data/icons/non-fungible-token/512/NFT-Blockchain-crypto-02-512.png",
                  width: kHeight,
                  height: kHeight,
                  fit: BoxFit.cover,
                  color: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: kDefaultPadding / 2),
                  child: Text(
                    "Node",
                    style: GoogleFonts.roboto(
                        textStyle: Theme.of(context)
                            .textTheme
                            .headline5
                            ?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ),
                )
              ],
            ),
            const Icon(
              Icons.menu,
              size: kIconSize * 1.8,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}