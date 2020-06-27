import 'package:flutter/material.dart';

class Panduan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/background.gif"),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  TitlePesan("Pengaktifan Pada Alat"),
                  Container(
                    margin: EdgeInsets.only(right: 15, left: 15),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.40),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 15),
                        ListPesan("1", "Tekan tombol power pada alat"),
                        SizedBox(height: 15),
                        ListPesan("2",
                            "Tunggu indikator LCD yang berwarna merah pada alat menyala selama 5 detik"),
                        SizedBox(height: 15),
                        ListPesan("3",
                            "Jika malam hari nyalakan terlebih dahulu LED Khusus penarik perhatian ikan pada alat"),
                        SizedBox(height: 15),
                        ListPesan(
                            "4", "Kaitkan alat diatas jaring yang dibentang"),
                        SizedBox(height: 15),
                        ListPesan("5",
                            "Pastikan lampu indikator berwarna hijau menyala untuk memastikan alat terknoneksi dengan smartphone"),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                  TitlePesan("Pengaktifan Pada Aplikasi"),
                  Container(
                    margin: EdgeInsets.only(right: 15, left: 15),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.40),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 15),
                        ListPesan("1",
                            "Pilih menu monitoring untuk mulai memonitoring jaring"),
                        SizedBox(height: 15),
                        ListPesan("2",
                            "Pada status di tampilan monitoring terdapat dua warna yaitu, warna merah dan warna hijau"),
                        SizedBox(height: 15),
                        ListPesan("3",
                            "Jika background berwarna merah berarti komponen tidak aktif dan jika background berwarna hijau maka komponen aktif"),
                        SizedBox(height: 15),
                        ListPesan("4",
                            "Dan untuk status jaring yang sudah full atau belum dapat dilihat pada informasi yang tepat berada di bawah status komponen dan statusnya akan diperjelas dengan informasi dan warna backgroundnya"),
                        SizedBox(height: 15),
                        ListPesan("5",
                            "Pilih menu panduan untuk melihat urutan penggunaan secara normal"),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Container TitlePesan(String pesan) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.orange.shade800,
    ),
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    margin: EdgeInsets.only(top: 40, right: 15, left: 15),
    width: double.infinity,
    child: Row(
      children: [
        Text(
          pesan,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: Transform.rotate(
              angle: 77,
              child: Icon(
                Icons.navigate_next,
                color: Colors.white,
                size: 26,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Container ListPesan(String nomor, String pesan) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20),
    child: Align(
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.orange.shade800,
            child: Text(
              nomor,
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ),
          SizedBox(width: 13),
          Expanded(
            child: Text(
              pesan,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ],
      ),
    ),
  );
}
