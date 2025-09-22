import 'package:bitaqwa/utilities/color_Constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bitaqwa/data/data_list_kajian.dart';
import 'package:bitaqwa/presentation/widget/card_kajian.dart';

class KajianScreen extends StatelessWidget {
  const KajianScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.colorPrimary,
        leading: IconButton(
          icon: const Icon(
            CupertinoIcons.back, // iOS-style back icon
            color: Colors.white, // white color
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Video Kajian',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white, // white title
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.grey[100],
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: KajianList.length,
        itemBuilder: (context, index) {
          final item = KajianList[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: CardKajian(
              thumbnail: item['thumbnail']!,
              account: item['account']!,
              title: item['title']!,
              ustadz: item['ustadz']!,
              onTap: () {
                // Navigate to detail or open YouTube
                debugPrint('Tapped: ${item['title']}');
              },
            ),
          );
        },
      ),
    );
  }
}
