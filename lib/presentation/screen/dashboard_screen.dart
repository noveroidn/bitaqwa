import 'package:bitaqwa/presentation/screen/doa_screen.dart';
import 'package:bitaqwa/presentation/screen/kajian_screen.dart';
import 'package:bitaqwa/utilities/color_constant.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header(){
      return Container(
        height: 250,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg_header_doa.png"),
            fit: BoxFit.cover,
          )
        ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.only(top: 12, left: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.white
                    ),
                    child: Text("Assalaamu'alaikum",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'PoppinsMedium'
                    )),
                  )
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                "Shubuh",style: TextStyle(
                fontSize: 16,
                    fontFamily: "PoppinsMedium",
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "04:46",style: TextStyle(
                fontSize: 36,
                fontFamily: "PoppinsBold",
                fontWeight: FontWeight.w700,
              ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 4,
                children: [
                  Icon(
                    Icons.location_on_rounded,
                        color: Colors.red,
                      size: 14,
                  ),
                  Text(
                    "Sentul, Kabupaten Bogor",style: TextStyle(
                    fontSize: 12,
                    fontFamily: "PoppinsRegular",
                    fontWeight: FontWeight.w400,
                  ),
                  ),
                ],
              )
            ],
      ),
      );
    }

    Widget cardMenus(){
      return Container(
        margin: EdgeInsets.symmetric(
            vertical: 30,
            horizontal: 16
        ),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: ColorConstant.colorPrimary
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
        child: Row(
          spacing: 18,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DoaScreen()
                    )
                );
              },
              child: Column(
                children: [
                  Image.asset("assets/images/ic_menu_doa.png", width: 95,
                  height: 95,),
                  Text("Doa-Doa", style: TextStyle(
                    fontSize: 14,
                      fontFamily: "PoppinsSemiBold",
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                   ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Image.asset("assets/images/ic_menu_zakat.png", width: 95,
                height: 95,),
                Text("Zakat", style: TextStyle(
                  fontSize: 14,
                    fontFamily: "PoppinsSemiBold",
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                 ),
                )
              ],
            ),
            Column(
              children: [
                Image.asset("assets/images/ic_menu_jadwal_sholat.png", width: 95,
                  height: 95,),
                Text("Jadwal Sholat", style: TextStyle(
                  fontSize: 14,
                  fontFamily: "PoppinsSemiBold",
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
                )
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const KajianScreen()),
                );
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    "assets/images/ic_menu_video_kajian.png",
                    width: 95,
                    height: 95,
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Video Kajian",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: "PoppinsSemiBold",
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            )

          ],
        )
        )
      );
    }

    Widget cardInspiration(){
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Text(
              "Inspiration", style: TextStyle(fontSize: 20, fontFamily: "PoppinsSemiBold", ),
            ),
            Image.asset("assets/images/img_inspiration.png", alignment: Alignment.center,),
            Image.asset("assets/images/img_inspiration_2.jpeg"),
            Image.asset("assets/images/img_inspiration_3.jpeg"),
            Image.asset("assets/images/img_inspiration_4.jpeg"),
            Image.asset("assets/images/img_inspiration_5.jpeg"),
            Image.asset("assets/images/img_inspiration_6.jpeg")
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
        body: ListView(
        children: [
          header(),
          cardMenus(),
          cardInspiration()
        ],
      ),
    );

  }
}

//scaffold:itu adalah widget yang menyediakan struktur ataupun properti
