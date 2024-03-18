import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_launcher/screens/home_screen.dart';
import 'package:whatsapp_launcher/utils/preference_utils.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double smallHeight = height * 0.02;
    double bigHeight = height * 0.04;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: MediaQuery.of(context).viewPadding.top + 15),
              Text(
                "Welcome to",
                style: GoogleFonts.inter(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: smallHeight),
              Text(
                "WA Quick-Chat",
                style: GoogleFonts.inter(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff01BD4F),
                ),
              ),
              SizedBox(height: bigHeight),
              Image.asset(
                "assets/intro_girl_image.png",
                height: MediaQuery.of(context).size.height * 0.4,
              ),
              SizedBox(height: bigHeight),
              Text(
                "WhatsApp Chats on the Fly",
                style: GoogleFonts.inter(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: bigHeight),
              Text(
                "Seamlessly Redirect WhatsApp chats\nwithout saving numbers",
                style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff51565A),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: bigHeight),
              ElevatedButton(
                onPressed: () {
                  PreferenceUtils.setBoolValue("showIntroScreen", false);
                  Get.off(() => const HomeScreen());
                },
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0),
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  fixedSize: MaterialStateProperty.all(Size(width * 0.9, 50)),
                ),
                child: Text(
                  "Start",
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
