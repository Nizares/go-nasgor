import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
// import 'package:pinput/pinput.dart';
import 'package:proyek_akhir/widgets/color.dart';
import 'package:proyek_akhir/widgets/textverify.dart';

class VerifyPage extends StatelessWidget {
  VerifyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final defaultPinTheme = PinTheme(
    //   width: 56,
    //   height: 56,
    //   textStyle: TextStyle(
    //       fontSize: 20,
    //       color: white2,
    //       fontWeight: FontWeight.w600),
    //   decoration: BoxDecoration(
    //     border: Border.all(color: white2),
    //     borderRadius: BorderRadius.circular(20),
    //   ),
    // );

    // final focusedPinTheme = defaultPinTheme.copyDecorationWith(
    //   border: Border.all(color: white2),
    //   borderRadius: BorderRadius.circular(8),
    // );

    // final submittedPinTheme = defaultPinTheme.copyWith(
    //   decoration: defaultPinTheme.decoration?.copyWith(
    //     color: Colors.transparent,
    //   ),
    // );
    return Scaffold(
      backgroundColor: red,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: IconButton(
              alignment: Alignment.centerLeft,
              onPressed: () => Get.back(),
              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: white2,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                alignment: Alignment.center,
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image(
                  image: AssetImage('assets/images/logo-mono.png'),
                  color: white1,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              "Verifikasi",
              style: TextStyle(
                color: white2,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextVerify(),
              TextVerify(),
              TextVerify(),
              TextVerify(),
              TextVerify(),
              TextVerify(),
            ],
          ),
          Column(
            children: [
              Container(
                child: Text(
                  "Udah punya akun ?",
                  style: TextStyle(color: Color(0xffefefef), fontSize: 15),
                ),
              ),
              Container(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'PAKYUU',
                    style: TextStyle(color: white2, fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
          // Pinput(
          //   defaultPinTheme: defaultPinTheme,
          //   focusedPinTheme: focusedPinTheme,
          //   submittedPinTheme: submittedPinTheme,
          //   validator: (s) {

          //   },
          //   pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
          //   showCursor: true,
          //   onCompleted: (pin) => print(pin),
          // )
        ],
      ),
    );
  }
}
