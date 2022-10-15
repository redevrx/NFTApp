import 'dart:ui';
import 'package:flutter/material.dart';
import '../../constants/constants.dart';

class NftBottomBar extends StatelessWidget {

  final int index;
  final callback onTab;
  const NftBottomBar({Key? key, this.index = 0,required this.onTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(topRight: Radius.circular(kDefaultPadding),topLeft: Radius.circular(kDefaultPadding)),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 60.0, sigmaY: 60.0),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          height: kHeight * 1.8,
          width: MediaQuery.of(context).size.width * 1,
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
             GestureDetector(
               onTap: () => onTab(0),
               child:  Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   const Padding(
                     padding: EdgeInsets.only(bottom: kDefaultPadding / 2),
                     child: Icon(
                       Icons.home,
                       color: Colors.white,
                       size: kIconSize * 1.5,
                     ),
                   ),
                   index == 0
                       ? const Icon(
                     Icons.circle,
                     color: Colors.white,
                     size: kIconSize / 2.5,
                   )
                       : const SizedBox()
                 ],
               )
             ),
             GestureDetector(
               onTap: () => onTab(1),
               child:  Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   const Padding(
                     padding: EdgeInsets.only(bottom: kDefaultPadding / 2),
                     child: Icon(
                       Icons.search,
                       color: Colors.white,
                       size: kIconSize * 1.5,
                     ),
                   ),
                   index == 1
                       ? const Icon(
                     Icons.circle,
                     color: Colors.white,
                     size: kIconSize / 2.5,
                   )
                       : const SizedBox()
                 ],
               ),
             ),
              GestureDetector(
              onTap: () => onTab(2),
              child:   Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(kDefaultPadding / 3.5),
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: kIconSize * 1.5,
                    ),
                  ),
                  const SizedBox(height: kDefaultPadding / 2,),
                  index == 2
                      ? const Icon(
                    Icons.circle,
                    color: Colors.white,
                    size: kIconSize / 2.5,
                  )
                      : const SizedBox()
                ],
              ),
            ),
             GestureDetector(
               onTap: () => onTab(3),
               child:  Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   const Padding(
                     padding: EdgeInsets.only(bottom: kDefaultPadding / 2),
                     child: Icon(
                       Icons.auto_graph,
                       color: Colors.white,
                       size: kIconSize * 1.5,
                     ),
                   ),
                   index == 3
                       ? const Icon(
                     Icons.circle,
                     color: Colors.white,
                     size: kIconSize / 2.5,
                   )
                       : const SizedBox()
                 ],
               ),
             ),
             GestureDetector(
               onTap: () => onTab(4),
               child:  Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   const Padding(
                     padding: EdgeInsets.only(bottom: kDefaultPadding / 2),
                     child: Icon(
                       Icons.people_outlined,
                       color: Colors.white,
                       size: kIconSize * 1.5,
                     ),
                   ),
                   index == 4
                       ? const Icon(
                     Icons.circle,
                     color: Colors.white,
                     size: kIconSize / 2.5,
                   )
                       : const SizedBox()
                 ],
               ),
             ),
            ],
          ),
        ),
      ),
    );
  }
}
