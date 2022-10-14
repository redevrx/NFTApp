import 'package:flutter/material.dart';
import 'package:nftapp/provider/bottom_bar/bottom_bar_provider.dart';
import 'package:nftapp/screen/nft/nft_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(useMaterial3: true),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => BottomBarProvider())
        ],
        child: const NftScreen(),
      ),
    );
  }
}
