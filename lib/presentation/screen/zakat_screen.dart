  import 'package:bitaqwa/utilities/color_Constant.dart';
  import 'package:flutter/material.dart';
  import 'package:bitaqwa/presentation/widget/card_result_harta.dart';

  class ZakatScreen extends StatefulWidget {
    const ZakatScreen({super.key});

    @override
    State<ZakatScreen> createState() => _ZakatScreenState();
  }

  class _ZakatScreenState extends State<ZakatScreen> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Zakat",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "PoppinsMedium",
            ),
          ),
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          },
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.white,
            ),
          ),
          backgroundColor: ColorConstant.colorPrimary,
        ),
        body: ListView(
          children: [
            Image.asset(
              "assets/images/bg_header_zakat.png",
              fit: BoxFit.cover,
            ),
            cardTotalHarta(),
            cardResultHarta()
          ],
        ),
      );
    }

    Container cardTotalHarta() {
      return Container(
        margin: EdgeInsets.all(24),
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(20),
          color: Colors.grey[200]
        ),
        child: Column(
          spacing: 16,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Total Harta",
            style: TextStyle(
              fontFamily: "PoppinsMedium",
              fontSize: 14,
              color: ColorConstant.colorPrimary
            ),
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Input Total Harta",
                labelStyle: TextStyle(color: ColorConstant.colorText,
                fontFamily: "PoppinsRegular",
                fontSize: 12),
                fillColor: Colors.white,
                filled: true,
                prefixText: "Rp",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12)
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: ColorConstant.colorPrimary,
                    width: 2
                  ),
                  borderRadius:  BorderRadius.circular(12)
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: ColorConstant.colorPrimary,
                    width: 2
                  ),
                    borderRadius:  BorderRadius.circular(12)
                ),
              ),
            ),
            ElevatedButton(onPressed: (){},
                child: Text(
              "Hitung Zakat",
                style: TextStyle(
                fontSize: 14
                  ),
                ),
                style: ElevatedButton.styleFrom(
                backgroundColor: ColorConstant.colorPrimary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)
                ),
                  padding: EdgeInsets.all(14),
                  minimumSize: Size(double.infinity, 0)
                )
            ),
          ],
        ),
      );
    }

// ... kode di atas ...

    Row cardResultHarta() {
      return Row(
        spacing: 24,
        // Children berisi dua widget CardResultHarta, masing-masing dibungkus Expanded.
          children: [
            // Kartu Pertama: Total Uang
            Expanded(
              child: CardResultHarta(
                title: "Total Uang",
                result: "Rp 100.000.000",
                color: ColorConstant.colorPrimary,
              ),
            ),
            Expanded(
              child: CardResultHarta(
                title: "Zakat dikeluarkan",
                result: "Rp 2.500.000",
                color: ColorConstant.colorPurple.withOpacity(0.8),
              ),
            ),
          ]
      );
    }


  }
