import 'package:flutter/material.dart';

class CardKajian extends StatelessWidget {
  final String thumbnail;
  final String account;
  final String title;
  final String ustadz;
  final VoidCallback onTap;

  const CardKajian({
    Key? key,
    required this.thumbnail,
    required this.account,
    required this.title,
    required this.ustadz,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.asset(
                thumbnail,
                fit: BoxFit.cover,
                height: 200,
                width: double.infinity,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              account,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.grey,
                fontFamily: "PoppinsLight"
              ),
            ),
            const SizedBox(height: 4),
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily: "PoppinsBold"
              ),
            ),
            const SizedBox(height: 4),
            Text(
              ustadz,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.red,
                fontFamily: "PoppinsMedium"
              ),
            ),
          ],
        ),
      ),
    );
  }
}
