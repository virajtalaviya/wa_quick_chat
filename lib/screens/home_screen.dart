import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_launcher/controllers/home_controller.dart';
import 'package:whatsapp_launcher/components/banner_ad.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "WA Quick-Chat",
          style: GoogleFonts.inter(
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(height: 25),
              Image.asset("assets/img_2.png", width: width * 0.9),
              const SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  text: "Join ",
                  style: GoogleFonts.inter(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                  children: [
                    TextSpan(
                      text: "Quick-Chat",
                      style: GoogleFonts.inter(
                        color: const Color(0xff01BD4F),
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                    TextSpan(
                      text: " and enjoy WhatsApp conversations without saving contacts",
                      style: GoogleFonts.inter(fontSize: 18),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              Container(
                padding: const EdgeInsets.only(left: 10),
                margin: const EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                  color: const Color(0xffEBEBEB),
                  border: Border.all(
                    color: const Color(0xffD5E1DA),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  keyboardType: TextInputType.phone,
                  controller: homeController.whatsAppNumber,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    hintText: "Add Number Here",
                    hintStyle: GoogleFonts.inter(
                      color: const Color(0xff51565A),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Container(
                height: 100,
                padding: const EdgeInsets.only(left: 10),
                margin: const EdgeInsets.only(top: 15, bottom: 15),
                decoration: BoxDecoration(
                  color: const Color(0xffEBEBEB),
                  border: Border.all(
                    color: const Color(0xffD5E1DA),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: homeController.messageController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    hintText: "Type your message here (optional)",
                    hintStyle: GoogleFonts.inter(
                      color: const Color(0xff51565A),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  homeController.launchWhatsApp(context);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(const Color(0xff01BD4F)),
                  elevation: MaterialStateProperty.all(0),
                  fixedSize: MaterialStateProperty.all(Size(width, 50)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                ),
                child: Text(
                  "Open In Whatsapp",
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BannerAdComponent(),
    );
  }
}

class ButtonComponent extends StatelessWidget {
  const ButtonComponent({
    Key? key,
    required this.text,
    required this.onTap,
    this.longPress,
  }) : super(key: key);

  final String text;
  final VoidCallback onTap;
  final VoidCallback? longPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onLongPress: longPress,
      child: SizedBox(
        height: 50,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
