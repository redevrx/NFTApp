import 'package:flutter/material.dart';
import '../../constants/constants.dart';

class NftTitle extends StatelessWidget {
  const NftTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Trending",
            style: Theme.of(context)
                .textTheme
                .headline3
                ?.copyWith(color: Colors.white)),
        const Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
          size: kIconSize,
        )
      ],
    );
  }
}