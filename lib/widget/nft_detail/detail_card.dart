import 'dart:ui';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/constants.dart';
import '../../model/nft_model.dart';

class DetailCard extends StatelessWidget {
  const DetailCard({
    Key? key,
    required this.nft,
    required this.hashCode,
  }) : super(key: key);

  final NftModel nft;
  final int hashCode;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Hero(
            tag: nft.hashCode,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(22.0),
              child: Image.network(
                nft.image,
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * .9,
              ),
            )),
        /**
         * detail card
         */
        Positioned(
            bottom: kDefaultPadding * 1.2,
            left: kDefaultPadding / 2,
            right: kDefaultPadding / 2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(kDefaultPadding),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * .8,
                  color: Colors.black.withOpacity(.8),
                  child: Padding(
                    padding:
                    const EdgeInsets.all(kDefaultPadding / 2),
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Ending in",
                                  style: GoogleFonts.roboto(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(
                                          color: Colors.grey)),
                                ),
                                Opacity(
                                  opacity: 0.0,
                                  child: Padding(
                                    padding:
                                    const EdgeInsets.symmetric(
                                        horizontal:
                                        kDefaultPadding),
                                    child: Image.network(
                                      "https://cdn-icons-png.flaticon.com/512/4200/4200116.png",
                                      fit: BoxFit.cover,
                                      width: kHeight / 2,
                                      height: kHeight / 2,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Text(
                              nft.time,
                              style: GoogleFonts.roboto(
                                  textStyle: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(
                                      color: Colors.white)),
                            ),
                            OutlinedButton(
                                onPressed: () {},
                                child: Text(" Purchase ",
                                    style: GoogleFonts.roboto(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            ?.copyWith(
                                            color:
                                            Colors.white))))
                          ],
                        ),
                        Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  nft.descrip,
                                  style: GoogleFonts.roboto(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(
                                          color: Colors.grey)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: kDefaultPadding),
                                  child: Image.network(
                                    "https://cdn-icons-png.flaticon.com/512/4200/4200116.png",
                                    fit: BoxFit.cover,
                                    width: kHeight / 2,
                                    height: kHeight / 2,
                                  ),
                                )
                              ],
                            ),
                            Text(
                              nft.buy,
                              style: GoogleFonts.roboto(
                                  textStyle: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(
                                      color: Colors.white)),
                            ),
                            OutlinedButton(
                                style: ButtonStyle(
                                    backgroundColor:
                                    MaterialStateProperty.all(
                                        Colors.blue)),
                                onPressed: () {},
                                child: Text("Place a bid",
                                    style: GoogleFonts.roboto(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            ?.copyWith(
                                            color:
                                            Colors.white))))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )),
        /**
         * glass card nft name
         */
        Positioned(
          top: MediaQuery.of(context).size.height * .58,
          left: MediaQuery.of(context).size.width * .3,
          right: MediaQuery.of(context).size.width * .3,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(kHeight),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaY: 10.0, sigmaX: 10.0),
              child: Container(
                height: kDefaultPadding * 3.4,
                width: MediaQuery.of(context).size.width * .35,
                padding: const EdgeInsets.all(kDefaultPadding / 2),
                color: Colors.black.withOpacity(.6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Bids",
                      style: GoogleFonts.roboto(
                          textStyle: Theme.of(context)
                              .textTheme
                              .labelLarge
                              ?.copyWith(color: Colors.white)),
                    ),
                    Transform.rotate(
                      angle: math.pi / 2,
                      child: const Icon(Icons.arrow_forward_ios,color: Colors.white,size: kIconSize / 1.5,),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        /**
         * top menu icons
         */
        Positioned(
          top: kDefaultPadding,
          left: kDefaultPadding * 2,
          right: kDefaultPadding * 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0,sigmaY: 10.0),
                  child: Container(
                    color: Colors.black.withOpacity(.6),
                      padding: const EdgeInsets.all(kDefaultPadding / 2),
                    child:  const Icon(Icons.data_saver_off_sharp,color: Colors.white,size: kIconSize * 1.2,)
                  ),
                )
              ),
              Row(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10.0,sigmaY: 10.0),
                        child: Container(
                            color: Colors.black.withOpacity(.6),
                            padding: const EdgeInsets.all(kDefaultPadding / 2),
                            child:  const Icon(Icons.ios_share_outlined,color: Colors.white,size: kIconSize * 1.2,)
                        ),
                      )
                  ),
                  const SizedBox(width: kDefaultPadding / 2,),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(40.0),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10.0,sigmaY: 10.0),
                        child: Container(
                            color: Colors.black.withOpacity(.6),
                            padding: const EdgeInsets.all(kDefaultPadding / 2),
                            child:  Row(
                              children: [
                                const Icon(Icons.favorite,color: Colors.red,size: kIconSize * 1.2,),
                                const SizedBox(width: kDefaultPadding / 5,),
                                Text("27",style: GoogleFonts.roboto(textStyle: Theme.of(context).textTheme.labelLarge?.copyWith(color: Colors.white)),)
                              ],
                            )
                        ),
                      )
                  ),
                  SizedBox(width: kDefaultPadding / 2,),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10.0,sigmaY: 10.0),
                        child: Container(
                            color: Colors.black.withOpacity(.6),
                            padding: const EdgeInsets.all(kDefaultPadding / 2),
                            child:  Icon(Icons.more_horiz,color: Colors.white,size: kIconSize * 1.2,)
                        ),
                      )
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}