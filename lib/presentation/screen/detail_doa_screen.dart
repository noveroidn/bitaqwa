import 'package:bitaqwa/utilities/color_Constant.dart';
import 'package:flutter/material.dart';

class DetailDoaScreen extends StatelessWidget {
  final String title;
  final String arabicText;
  final String translation;
  final String reference;
  const DetailDoaScreen({super.key, required this.title, required this.arabicText, required this.translation, required this.reference});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.colorPrimary,
        title: Text(
          title,
          style: TextStyle(
            fontFamily: "PoppinsMedium",
            color: Colors.white,
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
              size: 30,
            )
        ),
      ),
    );
  }
}