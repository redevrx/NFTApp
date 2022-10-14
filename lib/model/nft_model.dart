import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NftModel {
  late String title;
  late String subTitle;
  late IconData icon;
  late String image;
  late String time;
  late String buy;
  late String descrip;///description buy

 NftModel({this.title = "",this.subTitle = "",this.icon = Icons.home,this.image = "",this.time = "8h 12m 4s",this.buy = "4.10 ETH",this.descrip = "Current bid"});
}