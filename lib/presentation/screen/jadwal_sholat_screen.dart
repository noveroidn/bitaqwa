import 'package:bitaqwa/presentation/widget/jadwal_sholat.dart';
import 'package:bitaqwa/utilities//color_constant.dart';
import 'package:flutter/material.dart';

class JadwalSholatScreen extends StatelessWidget {
  const JadwalSholatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorConstant.colorPrimary,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.white,
              )
          ),
          title: Text(
            "Jadwal Shalat",
            style: TextStyle(
                fontFamily: "PoppinsMedium",
                color: Colors.white
            ),
          ),
        ),
        body: Container(
          width: double.infinity,
          height: MediaQuery.sizeOf(context).height,
          decoration: BoxDecoration(
              color: Colors.blue[100]
          ),
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            "assets/bitaqwa/images/bg_header_jadwal_sholat.png"
                        ),
                        fit: BoxFit.cover
                    )
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 48,
                    ),
                    Text(
                      "Selasa, 07 Oktober 2025",
                      style: TextStyle(
                          fontSize: 23,
                          fontFamily: "PoppinsSemiBold",
                          fontWeight: FontWeight.w700,
                          color: Colors.white
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 4,
                      children: [
                        Icon(
                          Icons.location_on_rounded, color: Colors.red,
                        ),
                        Text(
                          "Sentul, Kabupaten Bogor",
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: "PoppinsSemiBold",
                              fontWeight: FontWeight.w400,
                              color: Colors.white
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: 80,
                          left: 30,
                          right: 30
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      padding: EdgeInsets.all(40),
                      child: Column(
                        children: [
                          JadwalSholat(prayer: "Shubuh", prayerTime: "4.17"),
                          Divider(
                            color: Colors.greenAccent,
                            height: 40,
                            thickness: 3,
                            radius: BorderRadius.circular(20),
                          ),
                          JadwalSholat(prayer: "Dzuhur", prayerTime: "11.43"),
                          Divider(
                            color: Colors.greenAccent,
                            height: 40,
                            thickness: 3,
                            radius: BorderRadius.circular(20),
                          ),
                          JadwalSholat(prayer: "Ashar", prayerTime: "14.45"),
                          Divider(
                            color: Colors.greenAccent,
                            height: 40,
                            thickness: 3,
                            radius: BorderRadius.circular(20),
                          ),
                          JadwalSholat(prayer: "Maghrib", prayerTime: "17.46"),
                          Divider(
                            color: Colors.greenAccent,
                            height: 40,
                            thickness: 3,
                            radius: BorderRadius.circular(20),
                          ),
                          JadwalSholat(prayer: "Isya", prayerTime: "18.56")
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}