// import 'dart:developer';
//
// import 'package:flutter/material.dart';
// import 'package:google_mobile_ads/google_mobile_ads.dart';
//
// class BannerAdComponent extends StatefulWidget {
//   const BannerAdComponent({Key? key}) : super(key: key);
//
//   @override
//   State<BannerAdComponent> createState() => _BannerAdComponentState();
// }
//
// class _BannerAdComponentState extends State<BannerAdComponent> {
//   late BannerAd _bannerAd;
//   bool adLoaded = false;
//
//   void loadBannerAd() {
//     log("BANNER AD");
//     _bannerAd = BannerAd(
//       size: AdSize.banner,
//       adUnitId: "ca-app-pub-4980262775196753/4898239278",
//       listener: BannerAdListener(
//         onAdFailedToLoad: (ad, error) {
//           log("[][][][][][]${error.message}");
//           log("[][][][][][]${error.code}");
//           log("[][][][][][]${error.domain}");
//           log("[][][][][][]${error.responseInfo}");
//         },
//         onAdLoaded: (ad) {
//           setState(() {
//             log("BANNER AD loaded");
//             adLoaded = true;
//           });
//         },
//
//       ),
//       request: const AdRequest(),
//     );
//   }
//
//   @override
//   void initState() {
//     loadBannerAd();
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     log("BANNER AD $adLoaded");
//     return SizedBox(
//       child: adLoaded ? AdWidget(ad: _bannerAd) : null,
//     );
//   }
// }
