import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

class SmartPageF extends StatefulWidget {
  SmartPageF({super.key});

  @override
  State<StatefulWidget> createState() => _SmartPageF();
}

class _SmartPageF extends State<SmartPageF> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        height: 932,
        decoration: BoxDecoration(
          color: const Color(0xffeff1f3),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: 0,
              child: Image.asset('images/imageContainer_28881.png', fit: BoxFit.cover,),
            ),
            Positioned(
              left: 0,
              width: 430,
              top: 254,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 0, right: 10, bottom: 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Center(
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         SizedBox(
                           width: 300,
                           height: 99,
                           child: Text(
                             'SMART',
                             textAlign: TextAlign.left,
                             style: TextStyle(
                               decoration: TextDecoration.none,
                               fontSize: 70,
                               color: const Color(0xffffffff),
                               fontFamily: 'Jura-Regular',
                               fontWeight: FontWeight.normal,
                             ),
                             maxLines: 9999,
                             overflow: TextOverflow.ellipsis,
                           ),
                         ),
                       ],
                     ),
                        )                           ,
                    
                    const SizedBox(height: 429),
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
                                        height: 50,
                                        child: Stack(
                                          children: [
                                            
                                            Positioned(
  left: 119,
  width: 267,
  top: 0,
  bottom: 0,
  child: ElevatedButton(
    onPressed: () {
      // Add your onPressed callback here
    },
    style: ElevatedButton.styleFrom(
      primary: Colors.white,
      onPrimary: const Color(0xff34a853),
      textStyle: TextStyle(
        decoration: TextDecoration.none,
        fontSize: 31,
        color: const Color(0xff34a853),
        fontFamily: 'Jura-Regular',
        fontWeight: FontWeight.normal,
      ),
    ),
    child: Text(
      'Get Started',
      textAlign: TextAlign.left,
      maxLines: 9999,
      overflow: TextOverflow.ellipsis,
    ),
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
          ],
        ),
      ),
    );
  }
}
