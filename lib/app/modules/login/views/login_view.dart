import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mytsel/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
          children: [
            SizedBox(height: 20),
            Container(
              alignment: Alignment.center,
              height: 150,
              child: Image.asset(
                "assets/logo/logo-laos.png",
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 30),
            Text(
              "ກະລຸນາໃສ່ດ້ວຍເບີໂທ ຂອງທ່ານ",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Text(
              "ເບີໂທ",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: controller.phoneC,
              keyboardType: TextInputType.phone,
              autocorrect: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "020 xx xxx xxx",
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Obx(
                  () => Checkbox(
                    activeColor: Colors.red,
                    value: controller.checkC.value,
                    onChanged: (value) => controller.checkC.toggle(),
                  ),
                ),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      text: "ຂ້ອຍຕົກລົງ,  ",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print("ເຫັນດີກັບ");
                            },
                          text: "ກັບເບີໂທ",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                        TextSpan(
                          text: ",",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print("ຂອງຂ້ອຍ");
                            },
                          // text: "ketentuan",
                          // style: TextStyle(
                          //   color: Colors.red,
                          // ),
                        ),
                        TextSpan(
                          text: ", ແລະ ",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print("ຄວາມຕົວຂອງ");
                            },
                          text: "ເປັນສ່ວນ",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                        TextSpan(
                          text: " ຕົວຂອງຂ້ອຍ",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Get.offAllNamed(Routes.HOME),
              child: Text(
                "ເຂົ້າສູ່ລະບົບ",
                style: TextStyle(
                  color: Color(0xFF747D8C),
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.grey[300],
                fixedSize: Size(150, 50),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text("ຫຼືເຂົ້າສູ່ລະບົບໂດຍໃຊ້"),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/fb.png"),
                      SizedBox(width: 7),
                      Text(
                        "Facebook",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF3B5998),
                        ),
                      ),
                    ],
                  ),
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(
                      Size(150, 50),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    side: MaterialStateProperty.all(
                      BorderSide(
                        color: Color(0xFF3B5998),
                      ),
                    ),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/google.png"),
                      SizedBox(width: 7),
                      Text(
                        "Google",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF1DA1F2),
                        ),
                      ),
                    ],
                  ),
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(
                      Size(150, 50),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    side: MaterialStateProperty.all(
                      BorderSide(
                        color: Color(0xFF1DA1F2),
                      ),
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
