import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: RichText(
          text: TextSpan(
              text: "Hai, ",
              style: TextStyle(
                fontSize: 18,
              ),
              children: [
                TextSpan(
                  text: "Rijal Azmi",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold, // Supaya Text menjadi Bold
                  ),
                ),
              ]),
        ),

        // Memasukkan logo QR
        actions: [
          // Agar QR bisa di klik maka gunakan GestureDetector
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(right: 20), // Untuk menggeserkan logo
              width: 25,
              height: 25,
              child: Image.asset(
                "assets/icons/Logo_QR.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
        elevation: 0,
        backgroundColor: Color(0xFFEC2028),
      ),
      body: Stack(
        // Membuat background header
        children: [
          // ClipPath adalah untuk membuat lengkungan warna pada background
          ClipPath(
            clipper: ClipPathClass(), // Dengan class ClipPathClass
            child: Container(
              height: 210,
              width: Get.width,
              color: Color(0xFFEC2028),
            ),
          ),

          // Untuk membuat background header
          Container(
            margin: EdgeInsets.only(
                top: 10), // jarak antara box dengan text "Hai, Rijal Azmi"
            child: Column(
              children: [
                Column(
                  // ClipPath adalah untuk membuat lengkungan warna pada background
                  children: [
                    ClipPath(
                      clipper: ClipInfoClass(), // Dengan class ClipInfoClass
                      child: Container(
                        padding: EdgeInsets.all(15), // jarak box dengan isinya
                        margin: EdgeInsets.symmetric(
                            horizontal: 25), // jarak antara pinggir dengan box
                        // Agar bisa menampilkan 2 warna
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFE52D27),
                              Color(0xFFB31217),
                            ],
                          ),
                        ),

                        // Membuat isi pada Box Informasi
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment
                              .start, // Agar semua text yg ada pada box berada di pinggir kiri
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment
                                  .spaceBetween, // Supaya Text & logo saling ke pojok
                              children: [
                                Text(
                                  "085156505106",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight
                                        .bold, // Agar text menjadi bold
                                  ),
                                ),
                                Image.asset("assets/icons/SimPATI_Logo.png"),
                              ],
                            ),

                            SizedBox(height: 20), // Jarak
                            Text(
                              "Sisa Pulsa Anda",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight:
                                    FontWeight.bold, // Agar text menjadi bold
                              ),
                            ),

                            SizedBox(height: 10), // Jarak
                            Row(
                              mainAxisAlignment: MainAxisAlignment
                                  .spaceBetween, // Supaya Text & logo saling ke pojok
                              children: [
                                Text(
                                  "Rp34.000",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                // Membuat button
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Isi Pulsa",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFFF7B731),
                                  ), // Untuk merubah warna button
                                ),
                              ],
                            ),

                            SizedBox(height: 10), // Jarak
                            // Untuk membuat garis
                            Divider(
                              color: Colors.black,
                            ),

                            SizedBox(height: 10), // Jarak
                            RichText(
                              text: TextSpan(
                                text: "Berlaku sampai ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                                children: [
                                  TextSpan(
                                    text: "19 April 2020",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ),

                            SizedBox(height: 10), // Jarak
                            Row(
                              mainAxisAlignment: MainAxisAlignment
                                  .start, // Supaya Text & logo berada disebelah kiri
                              children: [
                                Text(
                                  "Telkomsel POIN",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),

                                SizedBox(width: 10), // Jarak
                                Container(
                                  // Mengatur ukuran
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 8,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF7B731),
                                    borderRadius: BorderRadius.circular(
                                        10), // Lengkungan bingkai
                                  ),
                                  child: Text(
                                    "172",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25), // Jarak Pinggir dengan Box
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Disini untuk membuat Box Card kita menggunakan class StatusCard
                          StatusCard(
                            title: "Internet",
                            data: "12.19",
                            satuan: "GB",
                          ),
                          StatusCard(
                            title: "Telepon",
                            data: "0",
                            satuan: "Min",
                          ),
                          StatusCard(
                            title: "SMS",
                            data: "23",
                            satuan: "SMS",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                //Untuk membuat pembatas
                Container(
                  height: 8,
                  color: Color(0xFFF1F2F6),
                ),
                // Agar color sampai bawah maka menggunakan Expanded
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        // body
                        Expanded(
                          child: ListView(
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            children: [
                              SizedBox(height: 20),
                              Text(
                                "Kategori Paket",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ItemKategori(
                                    title: "Internet",
                                    icon: "assets/icons/Internet.png",
                                  ),
                                  ItemKategori(
                                    title: "Telpon",
                                    icon: "assets/icons/Telpon.png",
                                  ),
                                  ItemKategori(
                                    title: "SMS",
                                    icon: "assets/icons/SMS.png",
                                  ),
                                  ItemKategori(
                                    title: "Roaming",
                                    icon: "assets/icons/Roaming.png",
                                  ),
                                ],
                              ),
                              SizedBox(height: 30),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ItemKategori(
                                    title: "Hiburan",
                                    icon: "assets/icons/Hiburan.png",
                                  ),
                                  ItemKategori(
                                    title: "Unggulan",
                                    icon: "assets/icons/Unggulan.png",
                                  ),
                                  ItemKategori(
                                    title: "Tersimpan",
                                    icon: "assets/icons/Tersimpan.png",
                                  ),
                                  ItemKategori(
                                    title: "Riwayat",
                                    icon: "assets/icons/Riwayat-icon.png",
                                  ),
                                ],
                              ),
                              SizedBox(height: 30),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Terbaru dari Telkomsel",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Lihat Semua",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              // Supaya bisa discroll ke pinggir
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    ItemTerbaru(
                                      image: "assets/icons/Image 1.png",
                                    ),
                                    ItemTerbaru(
                                      image: "assets/icons/Image 2.png",
                                    ),
                                    ItemTerbaru(
                                      image: "assets/icons/Image 1.png",
                                    ),
                                    ItemTerbaru(
                                      image: "assets/icons/Image 2.png",
                                    ),
                                    ItemTerbaru(
                                      image: "assets/icons/Image 1.png",
                                    ),
                                    ItemTerbaru(
                                      image: "assets/icons/Image 2.png",
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 30),
                            ],
                          ),
                        ),

                        // Navigation
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          height: 80,
                          // agar ada garis
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment
                                .spaceEvenly, // Supaya logo berada ditengah2
                            children: [
                              // Disini untuk membuat Menu menggunakan Class ItemNav
                              ItemNav(
                                icon: "beranda",
                                status: true,
                                title: "Beranda",
                              ),
                              ItemNav(
                                icon: "riwayat",
                                status: false,
                                title: "Riwayat",
                              ),
                              ItemNav(
                                icon: "bantuan",
                                status: false,
                                title: "Bantuan",
                              ),
                              ItemNav(
                                icon: "inbox",
                                status: false,
                                title: "Inbox",
                              ),
                              ItemNav(
                                icon: "profil",
                                status: false,
                                title: "Akun Saya",
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

// Ini Class ClipPath untuk mengatur lengkungan pada background
class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 60);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 60,
    );
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

// Ini Class ClipPath untuk mengatur lengkungan pada Box Informasi
class ClipInfoClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width - 80, size.height);
    path.lineTo(size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

// Class Box Card
class StatusCard extends StatelessWidget {
  StatusCard({
    Key? key,
    required this.title,
    required this.data,
    required this.satuan,
  }) : super(key: key);

  final String title;
  final String data;
  final String satuan;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        width: Get.width * 0.25,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment
              .start, // Agar semua text yg ada pada box berada di pinggir kiri
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            RichText(
              text: TextSpan(
                text: data,
                style: TextStyle(
                  fontSize: 22,
                  color: Color(0xFFEC2028),
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: " $satuan",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF747D8C),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemKategori extends StatelessWidget {
  ItemKategori({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment
          .center, // Agar semua text yg ada pada box berada di Tengah2
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 50,
          height: 50,
          child: Image.asset(
            icon,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 5),
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}

class ItemTerbaru extends StatelessWidget {
  ItemTerbaru({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      width: Get.width * 0.7,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

// Class ItemNav untuk membuat Menu
class ItemNav extends StatelessWidget {
  ItemNav({
    Key? key,
    required this.status,
    required this.icon,
    required this.title,
  }) : super(key: key);

  final bool status;
  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 25,
          child: Image.asset(
            (status == true)
                ? "assets/icons/$icon-Active.png" // Kondisi active
                : "assets/icons/$icon.png", // Kondisi tidak active
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(height: 5),
        Text(
          title,
          style: TextStyle(
            color: (status == true) ? Color(0xFFEC2028) : Color(0xFF747D8C),
          ),
        ),
      ],
    );
  }
}
