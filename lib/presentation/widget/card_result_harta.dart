import 'package:flutter/material.dart';

class CardResultHarta extends StatelessWidget {
  // Deklarasi properti
  final String title;
  final String result; // Menambahkan 'result' karena ini adalah card hasil
  final Color color;

  // Konstruktor
  const CardResultHarta({
    super.key,
    required this.title,
    required this.result,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // Menggunakan margin agar ada jarak antar card jika diletakkan dalam list/column
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
        // Menambahkan shadow agar terlihat lebih seperti 'card'
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3), // Perubahan posisi shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align teks ke kiri
        children: [
          // 1. Title
          Text(
            title,
            style: const TextStyle(
              fontSize: 14, // Sedikit dikecilkan agar 'result' lebih menonjol
              fontFamily: "PoppinsRegular", // Asumsi ada font ini
              color: Colors.white70, // Warna lebih lembut
            ),
          ),

          const SizedBox(height: 8), // Spasi antar title dan result

          // 2. Result (Hasil/Nilai)
          Text(
            result,
            style: const TextStyle(
              fontSize: 18, // Lebih besar agar menonjol sebagai hasil
              fontFamily: "PoppinsBold", // Font bold untuk penekanan
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}