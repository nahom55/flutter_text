import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:smart_soil_app/SmartPage1.dart';

class SmartPageL extends StatefulWidget {
  SmartPageL({super.key});

  @override
  State<StatefulWidget> createState() => _SmartPageL();
}

class _SmartPageL extends State<SmartPageL> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        width: 430,
        height: 932,
        decoration: BoxDecoration(
          color: const Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 105.947,
              width: 220,
              top: 134,
              height: 200,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: 220,
                    top: 0,
                    height: 200,
                    child: Image.asset('images/image1_27383.png', width: 220, height: 200,),
                  ),
                  Positioned(
                    left: 24.974,
                    width: 28.199,
                    top: 140.492,
                    height: 58.736,
                    child: Image.asset('images/image2_27384.png', width: 28.199, height: 58.736,),
                  ),
                  Positioned(
                    left: 43.828,
                    width: 109.687,
                    top: 0,
                    height: 199.381,
                    child: Image.asset('images/image3_27385.png', width: 109.687, height: 199.381,),
                  ),
                  Positioned(
                    left: 49.115,
                    width: 99.111,
                    top: 4.517,
                    height: 190.346,
                    child: Image.asset('images/image4_27386.png', width: 99.111, height: 190.346,),
                  ),
                  Positioned(
                    left: 82.468,
                    width: 10.833,
                    top: 63.461,
                    height: 13.091,
                    child: Image.asset('images/image5_27387.png', width: 10.833, height: 13.091,),
                  ),
                  Positioned(
                    left: 91.547,
                    width: 10.833,
                    top: 63.461,
                    height: 13.091,
                    child: Image.asset('images/image6_27388.png', width: 10.833, height: 13.091,),
                  ),
                  Positioned(
                    left: 100.418,
                    width: 14.443,
                    top: 63.461,
                    height: 13.091,
                    child: Image.asset('images/image7_27389.png', width: 14.443, height: 13.091,),
                  ),
                  Positioned(
                    left: 76.109,
                    width: 45.112,
                    top: 49.563,
                    height: 40.888,
                    child: Image.asset('images/image8_27390.png', width: 45.112, height: 40.888,),
                  ),
                  Positioned(
                    left: 64.555,
                    width: 64.552,
                    top: 119.694,
                    height: 1,
                    child: Container(
                      width: 64.552,
                      height: 1,
                      decoration: BoxDecoration(
                        color: const Color(0xffcccccc),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 64.555,
                    width: 4.077,
                    top: 112.577,
                    height: 3.695,
                    child: Image.asset('images/image9_27392.png', width: 4.077, height: 3.695,),
                  ),
                  Positioned(
                    left: 64.555,
                    width: 64.552,
                    top: 138.17,
                    height: 1,
                    child: Container(
                      width: 64.552,
                      height: 1,
                      decoration: BoxDecoration(
                        color: const Color(0xffcccccc),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 64.555,
                    width: 4.077,
                    top: 131.053,
                    height: 3.695,
                    child: Image.asset('images/image10_27394.png', width: 4.077, height: 3.695,),
                  ),
                  Positioned(
                    left: 106.196,
                    width: 23.058,
                    top: 150.32,
                    height: 8.89,
                    child: Image.asset('images/image11_27395.png', width: 23.058, height: 8.89,),
                  ),
                  Positioned(
                    left: 71.205,
                    width: 4.077,
                    top: 112.577,
                    height: 3.695,
                    child: Image.asset('images/image12_27396.png', width: 4.077, height: 3.695,),
                  ),
                  Positioned(
                    left: 77.854,
                    width: 4.077,
                    top: 112.577,
                    height: 3.695,
                    child: Image.asset('images/image13_27397.png', width: 4.077, height: 3.695,),
                  ),
                  Positioned(
                    left: 71.205,
                    width: 4.077,
                    top: 131.053,
                    height: 3.695,
                    child: Image.asset('images/image14_27398.png', width: 4.077, height: 3.695,),
                  ),
                  Positioned(
                    left: 77.854,
                    width: 4.077,
                    top: 131.053,
                    height: 3.695,
                    child: Image.asset('images/image15_27399.png', width: 4.077, height: 3.695,),
                  ),
                  Positioned(
                    left: 6.291,
                    width: 213.709,
                    top: 199.348,
                    height: 1,
                    child: Container(
                      width: 213.709,
                      height: 1,
                      decoration: BoxDecoration(
                        color: const Color(0xffb0abab),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 162.524,
                    width: 23.69,
                    top: 122.927,
                    height: 13.346,
                    child: Image.asset('images/image16_273101.png', width: 23.69, height: 13.346,),
                  ),
                  Positioned(
                    left: 182.796,
                    width: 5.344,
                    top: 184.113,
                    height: 12.659,
                    child: Image.asset('images/image17_273102.png', width: 5.344, height: 12.659,),
                  ),
                  Positioned(
                    left: 177.535,
                    width: 11.381,
                    top: 195.835,
                    height: 3.985,
                    child: Image.asset('images/image18_273103.png', width: 11.381, height: 3.985,),
                  ),
                  Positioned(
                    left: 195.535,
                    width: 6.688,
                    top: 183.247,
                    height: 12.92,
                    child: Image.asset('images/image19_273104.png', width: 6.688, height: 12.92,),
                  ),
                  Positioned(
                    left: 191.568,
                    width: 11.757,
                    top: 194.843,
                    height: 4.977,
                    child: Image.asset('images/image20_273105.png', width: 11.757, height: 4.977,),
                  ),
                  Positioned(
                    left: 181.893,
                    width: 14.509,
                    top: 96.379,
                    height: 13.15,
                    child: Image.asset('images/image21_273106.png', width: 14.509, height: 13.15,),
                  ),
                  Positioned(
                    left: 174.254,
                    width: 28.907,
                    top: 147.939,
                    height: 46.273,
                    child: Image.asset('images/image22_273107.png', width: 28.907, height: 46.273,),
                  ),
                  Positioned(
                    left: 174.496,
                    width: 25.024,
                    top: 111.503,
                    height: 40.577,
                    child: Image.asset('images/image23_273108.png', width: 25.024, height: 40.577,),
                  ),
                  Positioned(
                    left: 178.525,
                    width: 23.624,
                    top: 125.679,
                    height: 14.757,
                    child: Image.asset('images/image24_273109.png', width: 23.624, height: 14.757,),
                  ),
                  Positioned(
                    left: 192.497,
                    width: 10.719,
                    top: 115.283,
                    height: 13.758,
                    child: Image.asset('images/image25_273110.png', width: 10.719, height: 13.758,),
                  ),
                  Positioned(
                    left: 181.896,
                    width: 14.843,
                    top: 93.776,
                    height: 11.453,
                    child: Image.asset('images/image26_273111.png', width: 14.843, height: 11.453,),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 42.955,
              width: 378.045,
              top: 345,
              height: 42,
              child: Text(
                'Log In',
                textAlign: TextAlign.left,
                style: TextStyle(decoration: TextDecoration.none, fontSize: 32, color: const Color(0xff000000), fontFamily: 'PTSans-Bold', fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Positioned(
              left: 66.955,
              width: 354.045,
              top: 397,
              height: 19,
              child: Text(
                'please sign in to continue',
                textAlign: TextAlign.left,
                style: TextStyle(decoration: TextDecoration.none, fontSize: 16, color: const Color(0xffb0abab), fontFamily: 'PTSans-Regular', fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Positioned(
              left: 10,
              width: 410,
              bottom: 99,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 0, right: 10, bottom: 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 35.874,
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 10, top: 0, right: 10, bottom: 0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  mainAxisSize: MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        width: double.infinity,
                                                        child: Padding(
                                                          padding: const EdgeInsets.only(left: 15, top: 0, right: 10, bottom: 0),
                                                          child: Column(
                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                            mainAxisSize: MainAxisSize.max,
                                                            crossAxisAlignment: CrossAxisAlignment.end,
                                                            children: [
                                                              Row(
                                                                children: [
                                                                  Expanded(
                                                                    child: Row(
                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                      children: [
                                                                        Expanded(
                                                                          child: Row(
                                                                            children: [
                                                                              Expanded(
                                                                                child: Container(
                                                                                  height: 22.902,
                                                                                  child: Stack(
                                                                                    children: [
                                                                                      // Positioned(
                                                                                      //   right: 3.045000000000016,
                                                                                      //   width: 26,
                                                                                      //   bottom: -0.0009999999999976694,
                                                                                      //   height: 20.735,
                                                                                      //  // child: Image.asset('images/imageEyeSlash_273184.png', width: 26, height: 20.735,),  //password hide image
                                                                                      // ),
                                                                                      Material(
  child: Positioned(
    left: 0,
    width: 310.955,
    top: 0,
    height: 22.347,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset('images/imageLock_273185.png', width: 19.615, height: 22.347,),
          ],
        ),
        const SizedBox(width: 35.17741775512695),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 273.208,
              height: 18,
              child: TextField(
                obscureText: true, // Set obscureText to true for password input
                decoration: InputDecoration(
                  hintText: 'Password',
                  border: InputBorder.none,
                ),
                style: TextStyle(decoration: TextDecoration.none, fontSize: 16, color: const Color(0xff9a9595), fontFamily: 'PTSans-Regular', fontWeight: FontWeight.normal),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
),   // password position

                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              const SizedBox(height: 11.971551895141602),
                                                              Row(
                                                                children: [
                                                                  Expanded(
                                                                    child: Row(
                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                      children: [
                                                                        Expanded(
                                                                          child: Row(
                                                                            children: [
                                                                              Expanded(
                                                                                child: Container(
                                                                                  height: 1,
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.845703125),
                    Row(
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 273,
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 10, top: 0, right: 10, bottom: 0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Expanded(
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  mainAxisSize: MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        width: double.infinity,
                                                        child: Padding(
                                                          padding: const EdgeInsets.only(left: 10, top: 0, right: 10, bottom: 0),
                                                          child: Column(
                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                            mainAxisSize: MainAxisSize.max,
                                                            crossAxisAlignment: CrossAxisAlignment.end,
                                                            children: [
                                                              Row(
                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                children: [
                                                                  SizedBox(
                                                                    width: 120.045,
                                                                    height: 16,
                                                                    child: Text(
                                                                      'Forgot Password',
                                                                      textAlign: TextAlign.left,
                                                                      style: TextStyle(decoration: TextDecoration.none, fontSize: 14, color: const Color(0xff34a853), fontFamily: 'PTSans-Bold', fontWeight: FontWeight.normal),
                                                                      maxLines: 9999,
                                                                      overflow: TextOverflow.ellipsis,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              const SizedBox(height: 35.91650390625),
                                                              Row(
                                                                children: [
                                                                  Expanded(
                                                                    child: Row(
                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                      children: [
                                                                        Expanded(
                                                                          child: Row(
                                                                            children: [
                                                                              Expanded(
                                                                                child: Container(
                                                                                  height: 221.083,
                                                                                  child: Stack(
                                                                                    children: [
                                                                                      Positioned(
                                                                                        left: 61.955,
                                                                                        width: 248.045,
                                                                                        bottom: 0,
                                                                                        height: 24,
                                                                                        child: Row(
                                                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                          children: [
                                                                                            Expanded(
                                                                                              child: Column(
                                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                  Container(
                                                                                                    width: double.infinity,
                                                                                                    child: Text(
                                                                                                      'Don’t have an account?',
                                                                                                      textAlign: TextAlign.left,
                                                                                                      style: TextStyle(decoration: TextDecoration.none, fontSize: 16, color: const Color(0xff696666), fontFamily: 'PTSans-Regular', fontWeight: FontWeight.normal),
                                                                                                      maxLines: 9999,
                                                                                                      overflow: TextOverflow.ellipsis,
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                            const SizedBox(width: 1),
                                                                                            Column(
                                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                                              children: [
                                                                                                SizedBox(
                                                                                                  width: 75.045,
                                                                                                  height: 17,
                                                                                                  child: Text(
                                                                                                    'sign up',
                                                                                                    textAlign: TextAlign.left,
                                                                                                    style: TextStyle(decoration: TextDecoration.none, fontSize: 16, color: const Color(0xff34a853), fontFamily: 'PTSans-Bold', fontWeight: FontWeight.normal),
                                                                                                    maxLines: 9999,
                                                                                                    overflow: TextOverflow.ellipsis,
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      Positioned(
                                                                                        left: 0,
                                                                                        width: 350,
                                                                                        top: 0,
                                                                                        child: Column(
                                                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                                                          mainAxisSize: MainAxisSize.min,
                                                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                                                          children: [
                                                                                            Row(
                                                                                              children: [
                                                                                                Expanded(
                                                                                                  child: Row(
                                                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                                                    children: [
                                                                                                      Expanded(
                                                                                                        child: Row(
                                                                                                          children: [
      Expanded(
  child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SmartPage1()),
        );
      },
      style: ElevatedButton.styleFrom(
        primary: const Color(0xff34a853), // background color
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        padding: EdgeInsets.symmetric(vertical: 9.08349609375, horizontal: 6),
      ),
      child: Center( // Center the text horizontally and vertically
        child: Text(
          'Log in',
          style: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 16,
            color: Colors.white,
            fontFamily: 'PTSans-Bold',
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    ),
  ),
),


                                                                                                          ],
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            const SizedBox(height: 28.08349609375),
                                                                                            Row(
                                                                                              children: [
                                                                                                Expanded(
                                                                                                  child: Row(
                                                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                                                    children: [
                                                                                                      Expanded(
                                                                                                        child: Row(
                                                                                                          children: [
                                                                                                            Expanded(
                                                                                                              child: Container(
                                                                                                                height: 115.679,
                                                                                                                child: Column(
                                                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                                  children: [
                                                                                                                    Row(
                                                                                                                      children: [
                                                                                                                        Expanded(
                                                                                                                          child: Row(
                                                                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                            children: [
                                                                                                                              Expanded(
                                                                                                                                child: Row(
                                                                                                                                  children: [
                                                                                                                                    Expanded(
                                                                                                                                      child: Container(
                                                                                                                                        height: 21,
                                                                                                                                        child: Stack(
                                                                                                                                          children: [
                                                                                                                                            Positioned(
                                                                                                                                              left: 0,
                                                                                                                                              width: 101.744,
                                                                                                                                              top: 11,
                                                                                                                                              bottom: 9,
                                                                                                                                              child: Container(
                                                                                                                                                width: 101.744,
                                                                                                                                                decoration: BoxDecoration(
                                                                                                                                                  border: Border.all(color: const Color(0xffb0abab), width: 1),
                                                                                                                                                ),
                                                                                                                                              ),
                                                                                                                                            ),
                                                                                                                                            Positioned(
                                                                                                                                              right: 0,
                                                                                                                                              width: 101.744,
                                                                                                                                              top: 11,
                                                                                                                                              bottom: 9,
                                                                                                                                              child: Container(
                                                                                                                                                width: 101.744,
                                                                                                                                                decoration: BoxDecoration(
                                                                                                                                                  border: Border.all(color: const Color(0xffb0abab), width: 1),
                                                                                                                                                ),
                                                                                                                                              ),
                                                                                                                                            ),
                                                                                                                                            Positioned(
                                                                                                                                              left: 123.11,
                                                                                                                                              top: 0,
                                                                                                                                              bottom: 0,
                                                                                                                                              child: Text(
                                                                                                                                                'or sign in with',
                                                                                                                                                textAlign: TextAlign.left,
                                                                                                                                                style: TextStyle(decoration: TextDecoration.none, fontSize: 16, color: const Color(0xff262626), fontFamily: 'PTSans-Regular', fontWeight: FontWeight.normal),
                                                                                                                                                maxLines: 9999,
                                                                                                                                                overflow: TextOverflow.ellipsis,
                                                                                                                                              ),
                                                                                                                                            ),
                                                                                                                                          ],
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                  ],
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                            ],
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ],
                                                                                                                    ),
                                                                                                                    const SizedBox(height: 0.0),
                                                                                                                    Row(
                                                                                                                      children: [
                                                                                                                        Expanded(
                                                                                                                          child: Row(
                                                                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                            children: [
                                                                                                                              Expanded(
                                                                                                                                child: Row(
                                                                                                                                  children: [
                                                                                                                                    Expanded(
                                                                                                                                      child: Container(
                                                                                                                                        child: Padding(
                                                                                                                                          padding: const EdgeInsets.only(left: 0, top: 0, right: 17.13027954101562, bottom: 8),
                                                                                                                                          child: Image.asset('images/customFrame_273127.png', height: 80.569,),
                                                                                                                                        ),
                                                                                                                                      ),
                                                                                                                                    ),
                                                                                                                                  ],
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                            ],
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                      ],
                                                                                                                    ),
                                                                                                                  ],
                                                                                                                ),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 42.955,
              width: 346.169,
              top: 442.79,
              child: Padding(
                padding: const EdgeInsets.only(left: 0, top: 0, right: 2.1689453125, bottom: 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 350.888,
                      height: 50.792,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    SizedBox(
      width: 20.724,
      height: 24.792,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            width: 22.724,
            top: 0,
            height: 24.792,
            child: Image.asset('images/image_273135.png', width: 22.724, height: 24.792,),
          ),
        ],
      ),
    ),
  ],
),
SizedBox(width: 55),
Expanded(
  child: Material(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: double.infinity,
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Enter your email',
              border: InputBorder.none,
            ),
            style: TextStyle(decoration: TextDecoration.none, fontSize: 16, color: const Color(0xff9a9595), fontFamily: 'PTSans-Regular', fontWeight: FontWeight.normal),
          ),
        ),
      ],
    ),
  ),
),

                        ],
                      ),
                    ),
                    const SizedBox(height: 8.800840377807617),
                    Row(
                      children: [
                        // Expanded(
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.start,
                        //     children: [
                        //       Expanded(
                        //         child: Row(
                        //           children: [
                        //             Expanded(
                        //               child: Container(
                        //                 height: 1,
                        //                 decoration: BoxDecoration(
                        //                   border: Border.all(color: const Color(0xffb0abab), width: 1),
                        //                 ),
                        //               ),
                        //             ),
                        //           ],
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
