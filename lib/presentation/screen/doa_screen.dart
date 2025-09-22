import 'package:bitaqwa/presentation/screen/doa_list_screen.dart';
import 'package:bitaqwa/presentation/widget/card_doa.dart';
import 'package:bitaqwa/utilities/color_constant.dart';
import 'package:flutter/material.dart';

class DoaScreen extends StatelessWidget {
  const DoaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text("Doa-Doa",
         style: TextStyle(
             fontSize: 20,
             fontFamily: "PoppinsMedium",
             color: Colors.white,
         ),
       ),
       leading: IconButton(onPressed: (){
         Navigator.pop(context);
       },
       icon: Icon(Icons.arrow_back_ios_new_rounded,
       color: Colors.white,
       size: 30,
       )
       ),
       backgroundColor: ColorConstant.colorPrimary,
     ),
      body: Column(
        children: [
          Image.asset("assets/images/bg_header_doa.png",
          width: double.infinity,
          height: 245,
          fit: BoxFit.cover,),
          Expanded(
            child: Padding(
                  padding: EdgeInsetsGeometry.all(12),
                    child: GridView.count(
                        crossAxisCount: 3,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 37,
                      children: [
                        CardDoa(
                            image: "assets/images/ic_doa_pagi_malam.png",
                            title: "Pagi & Malam",
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => DoaListScreen(category: 'Pagi & Malam',)
                              )
                              );
                            }
                        ),
                        CardDoa(
                            image: "assets/images/ic_doa_rumah.png",
                            title: "Rumah",
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => DoaListScreen(category: 'Rumah',)
                              )
                              );
                            }
                        ),
                        CardDoa(
                            image: "assets/images/ic_doa_makanan_minuman.png",
                            title: "Makanan & Minuman",
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => DoaListScreen(category: 'Makanan & Minuman',)
                              )
                              );
                            }
                        ),
                        CardDoa(
                            image: "assets/images/ic_doa_perjalanan.png",
                            title: "Perjalanan",
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => DoaListScreen(category: 'Perjalanan',)
                              )
                              );
                            }
                        ),CardDoa(
                            image: "assets/images/ic_doa_sholat.png",
                            title: "Sholat",
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => DoaListScreen(category: 'Sholat',)
                              )
                              );
                            }
                        ),CardDoa(
                            image: "assets/images/ic_doa_etika_baik.png",
                            title: "Etika Baik",
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => DoaListScreen(category: 'Etika Baik',)
                              )
                              );
                            }
                        ),CardDoa(
                            image: "assets/images/pakaian.png",
                            title: "Pakaian",
                            onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => DoaListScreen(category: 'Pakaian',)
                            )
                            );
                           }
                        ),CardDoa(
                            image: "assets/images/logo_perlindungan.png",
                            title: "Pelindungan",
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => DoaListScreen(category: 'Perlindungan',)
                              )
                              );
                            }
                        ),CardDoa(
                            image: "assets/images/love.png",
                            title: "Kebaikan & Keberkahan",
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => DoaListScreen(category: 'Kebaikan & Keberkahan',)
                              )
                              );
                            }
                        ),CardDoa(
                            image: "assets/images/doa_belajar.png",
                            title: "Do'a belajar",
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => DoaListScreen(category: 'Doa belajar',)
                              )
                              );
                            }
                        ),
                       ],
                    ),
            ),
          )
        ],
      ),
    );
  }
}
