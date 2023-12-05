import 'package:flutter/material.dart';
import 'package:list_kuliner/detail_page.dart';
import 'package:list_kuliner/http_helper.dart';
import 'package:list_kuliner/makanan.dart';
import 'package:list_kuliner/styles.dart';

class ListItem extends StatelessWidget {
  HttpHelper api = HttpHelper();
  final Makanan makanan;

  ListItem({super.key, required this.makanan, required this.api});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(
              makanan: makanan,
              api: api,
            ),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        height: 100,
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: decorBoxContainer(),
        child: Row(
          children: [
            gambar(),
            SizedBox(width: 10),
            deskripsiTeks(),
            Icon(Icons.food_bank_rounded, color: iconColor)
          ],
        ),
      ),
    );
  }

  BoxDecoration decorBoxContainer() {
    return BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
              color: Color.fromARGB(255, 188, 188, 188),
              offset: Offset(1, 2),
              blurRadius: 6)
        ]);
  }

  ClipRRect gambar() {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      child: Image.asset(
        makanan.gambarUtama,
        height: 75,
        width: 85,
        fit: BoxFit.cover,
      ),
    );
  }

  Expanded deskripsiTeks() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(makanan.nama, style: headerH1),
          Text(
            makanan.deskripsi,
            style: TextStyle(color: Colors.black38),
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 3),
          Text(
            makanan.harga,
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
