import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mytsel/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

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

            // Untuk menampilkan Karakter
            Container(
              alignment:
                  Alignment.centerLeft, // Supaya karakter berada disamping kiri
              height: 150, // Ukuran karakter
              child: Image.asset(
                "assets/Karakter/karakter login.png",
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
                fontWeight: FontWeight.bold, // Supaya Text menjadi Bold
              ),
            ),

            // Jarak
            SizedBox(
              height: 30,
            ), // Text
            Text(
              "Nomor HP",

              // Untuk ukuran text & bold
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold, // Supaya Text menjadi Bold
              ),
            ),

            // Jarak
            SizedBox(
              height: 10,
            ), // Text

            // Untuk membuat text box
            TextField(
              controller: controller.phoneC,
              keyboardType: TextInputType.phone,
              autocorrect: false,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Cth. 08211987xxxx"),
            ),

            // Jarak
            SizedBox(
              height: 10,
            ),

            Row(
              children: [
                // Untuk membuat box ceklis
                Obx(
                  () => Checkbox(
                    activeColor:
                        Colors.red, // Agar warna ceklis menjadi warna merah
                    value:
                        controller.checkC.value, // Supaya box ceklis bisa aktif
                    onChanged: (value) => controller.checkC.toggle(),
                  ),
                ),

                // Untuk membuat text
                Expanded(
                  child: RichText(
                    text: TextSpan(
                        text: "Saya menyetujui ",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            // Agar text bisa di clik
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("click syarat");
                              },
                            text: "syarat",
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                          TextSpan(
                            text: ", ",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                            // Agar text bisa di clik
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("click ketentuan");
                              },
                            text: "ketentuan",
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                          TextSpan(
                            text: ", dan ",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                            // Agar text bisa di clik
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print("click privasi");
                              },
                            text: "privasi ",
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                          TextSpan(
                            text: "Telkomsel ",
                            style: TextStyle(
                              color: Colors.black,
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
              onPressed: () => Get.offAllNamed(Routes
                  .KODE), // Agar ketika klik button masuk bisa pindah pige
              child: Text(
                "MASUK",
                style: TextStyle(
                  color: Color(0xFF747D8C),
                ),
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
                //Facebook
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
                          color: Color(0xFF3B5998),
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
                      ), // Lengkungan bingkai
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
                      ), // Lengkungan bingkai
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
