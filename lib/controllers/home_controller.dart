import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_launcher/components/common_snackbar.dart';

class HomeController extends GetxController {
  TextEditingController whatsAppNumber = TextEditingController();
  TextEditingController messageController = TextEditingController();

  void launchWhatsApp(BuildContext context) {
    if (whatsAppNumber.text.trim().isEmpty) {
      CommonSnackBar.showSnackBar(context, "Please enter whatsapp number");
    } else {
      try {
        launchUrl(Uri.parse("https://wa.me/${whatsAppNumber.text}/?text=${Uri.parse(messageController.text)}"));
      } catch (_) {
        CommonSnackBar.showSnackBar(context, "Can't launch whatsapp");
      }
    }
  }
}
