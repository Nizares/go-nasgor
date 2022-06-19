import 'package:flutter/material.dart';
import 'package:proyek_akhir/pages/signin.dart';
import 'package:proyek_akhir/widgets/bottomnav.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:get/get.dart';

final pagecontrol = PageController();

class landing extends StatelessWidget {
  const landing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd93728),
      body: ListView(
          children: [
            Center(
                child: SmoothPageIndicator(
                    controller: pagecontrol,
                    count: 4,
                    effect: const ExpandingDotsEffect(
                        dotHeight: 13,
                        dotWidth: 13,
                        activeDotColor: Color(0xfff29f05),
                        dotColor: Colors.white,
                        spacing: 15))),
            SizedBox(
              height: 30,
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              child: PageView(
                controller: pagecontrol,
                children: [
                  Column(
                    children: [
                      Image(image: AssetImage("assets/images/mudah.jpg")),
                      Container(
                          child: Text(
                        "Mudah",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 45,
                          color: Colors.white,
                        ),
                      )),
                      Text(
                        "Tinggal Klik sat set sat set \n jadi deh pesananmu",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image(image: AssetImage("assets/images/cepat.jpg")),
                      Container(
                          child: Text(
                        "Cepat",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 45,
                          color: Colors.white,
                        ),
                      )),
                      Text(
                        "Gak perlu nunggu lama buat \n kasih makan cacing di perutmu",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image(image: AssetImage("assets/images/aman.jpg")),
                      Container(
                          child: Text(
                        "Enak",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 45,
                          color: Colors.white,
                        ),
                      )),
                      Text(
                        "Gak Perlu ragu, masalah kualitas \n udah approved by BAPAK GIAL !!!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          child: Text(
                        "Yuk Mulai!",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 45,
                          color: Colors.white,
                        ),
                      )),
                      Text(
                        "Rasain NasGOr Khas kami",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 45,
                        height: 200,
                        child: ElevatedButton(
                          onPressed: () {
                            Get.to(SignIn());
                          },
                          child: const Icon(Icons.arrow_forward_ios,
                              color: Colors.black, size: 15),
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            primary: Colors.white, // <-- Button color
                            onPrimary: Colors.black, // <-- Splash color
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ]),
    );
  }
}