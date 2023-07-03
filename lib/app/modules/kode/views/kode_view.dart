import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mytsel/app/modules/kode/controllers/kode_controller.dart';
import 'package:mytsel/app/routes/app_pages.dart';

import '../controllers/kode_controller.dart';

class KodeView extends GetView<KodeController> {
  const KodeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
          children: [
            //Jarak
            SizedBox(
              height: 20,
            ),
            Container(
              alignment:
                  Alignment.centerLeft, // Supaya karakter berada disamping kiri
              height: 150, // ukuran karakter
              child: Image.asset(
                "assets/Karakter/karakter kode.png",
                fit: BoxFit.contain,
              ), // Image.assets
            ),

            // Jarak
            SizedBox(
              height: 30,
            ),
            Text(
              "Silahkan masuk dengan nomor telkomsel kamu",

              // Untuk ukuran text & Bold
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            // Jarak
            SizedBox(
              height: 30,
            ), // Text
            Text(
              "Kode Unik",

              // Untuk ukuran text & bold
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            // Jarak
            SizedBox(
              height: 10,
            ), // Text

            // Untuk membuat text box
            TextField(
              controller: controller.kodeC,
              keyboardType: TextInputType.phone,
              autocorrect: false,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Cth. q5Tsgh***"),
            ),

            // Jarak
            SizedBox(
              height: 10,
            ),

            Row(
              children: [
                // Untuk membuat text
                Expanded(
                  child: RichText(
                    text: TextSpan(
                        text: "Tidak Menerima SMS ? ",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            // Agar text bisa di clik
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("click Kirim Ulang");
                              },
                            text: "Kirim Ulang",
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                        ]),
                  ),
                ),
              ],
            ),

            // Jarak
            SizedBox(
              height: 30,
            ),

            // Membuat button masuk
            ElevatedButton(
              onPressed: () => Get.offAllNamed(Routes.HOME),
              child: Row(
                mainAxisAlignment: MainAxisAlignment
                    .center, // Agar text & logo berada ditengah2 button
                children: [
                  Image.asset(
                    "assets/Loading/Logo-loading.png",
                  ),

                  // Ukuran antara logo dengan text
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    "MASUK",
                    style: TextStyle(
                      color: Color(0xFF747D8C),
                    ),
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFE4E5EA),
                fixedSize: Size(150, 50),
              ),
            ),

            // Jarak
            SizedBox(
              height: 20,
            ),

            Center(
              child: Text("Atau masuk menggunakan"),
            ),

            // Jarak
            SizedBox(
              height: 40,
            ),

            // Membuat button Facebook
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly, // Agar button berada ditengah2
              children: [
                // Facebook
                OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment
                        .center, // Agar text & logo berada ditengah2 button
                    children: [
                      Image.asset(
                        "assets/Facebook/Logo-Facebook.png",
                      ),

                      // Ukuran antara logo dengan text
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        "Facebook",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF747D8C),
                        ),
                      ),
                    ],
                  ),

                  // Untuk membuat bingkai pada buttorn Facebook
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(
                      Size(150, 50),
                    ), // Ukuran button
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),

                    // Warna Untuk bingkai
                    side: MaterialStateProperty.all(
                      BorderSide(color: Color(0xFF3B5998)),
                    ),
                  ),
                ),

                // Twitter
                OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment
                        .center, // Agar text & logo berada ditengah2 button
                    children: [
                      Image.asset(
                        "assets/Twitter/Logo-Twitter.png",
                      ),

                      // Ukuran antara logo dengan text
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        "Twitter",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF1DA1F2),
                        ),
                      ),
                    ],
                  ),

                  // Untuk membuat bingkai pada buttorn Twitter
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(
                      Size(150, 50),
                    ), // Ukuran button
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),

                    // Warna Untuk bingkai
                    side: MaterialStateProperty.all(
                      BorderSide(color: Color(0xFF1DA1F2)),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
