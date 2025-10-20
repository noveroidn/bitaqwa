import 'package:flutter/material.dart';

class JadwalSholat extends StatelessWidget {

  final String prayer;
  final String prayerTime;

  const JadwalSholat({super.key, required this.prayer, required this.prayerTime});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          prayer,
          style: TextStyle(
              fontSize: 16,
              fontFamily: "PoppinsBold"
          ),
        ),
        Spacer(),
        Text(
          prayerTime,
          style: TextStyle(
              fontSize: 16,
              fontFamily: "PoppinsRegular"
          ),
        ),
        SizedBox(width: 16),
        Image.asset("assets/bitaqwa/images/img_clock.png")
      ],
    );
  }
}