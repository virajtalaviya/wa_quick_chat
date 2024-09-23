import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class BannerAdComponent extends StatefulWidget {
  const BannerAdComponent({Key? key}) : super(key: key);

  @override
  State<BannerAdComponent> createState() => _BannerAdComponentState();
}

class _BannerAdComponentState extends State<BannerAdComponent> {
  late BannerAd _bannerAd;
  bool adLoaded = false;

  void loadBannerAd() {
    _bannerAd = BannerAd(
      size: AdSize.banner,
      adUnitId: "ca-app-pub-4980262775196753/4898239278",
      listener: BannerAdListener(
        onAdFailedToLoad: (ad, error) {
        },
        onAdLoaded: (ad) {
          setState(() {
            adLoaded = true;
          });
        },
      ),
      request: const AdRequest(),
    );

    _bannerAd.load();
  }

  @override
  void initState() {
    loadBannerAd();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: adLoaded ? AdWidget(ad: _bannerAd) : null,
    );
  }
}
