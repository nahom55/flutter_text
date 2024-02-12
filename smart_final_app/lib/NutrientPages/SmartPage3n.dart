import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import '../DataPage.dart';
class SmartPage3n extends StatefulWidget {
  SmartPage3n({super.key});

  @override
  State<StatefulWidget> createState() => _SmartPage3n();
}

class _SmartPage3n extends State<SmartPage3n> {
  @override
  
 //final List<String> dataArray = ['1', '2', '3', '45', '5', '6', '7'];


// Assuming this code is inside a StatefulWidget
// Access 'n' value from dataArray

// Get the corresponding nitrogen status message based on the 'n' value

String statusMessage = nStatusMessages[ getStatusIndexForN(dataArray['n']!)];
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        width: 430,
        height: 932,
        decoration: BoxDecoration(
          color: const Color(0xffeff1f3),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              width: 432,
              top: 0,
              height: 115,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: 432,
                    top: 0,
                    height: 115,
                    child: Image.asset('images/layerGroupImage1_77918.png', width: 432, height: 115,),
                  ),
                  Positioned(
                    left: 45,
                    width: 343,
                    top: 40,
                    child: Text(
                      'Nitrogen status',
                      textAlign: TextAlign.center,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 24, color: const Color(0xffffffff), fontFamily: 'Montserrat-Bold', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 48,
                    width: 18.414,
                    top: 47,
                    height: 15.414,
                    child: Image.asset('images/layerGroupImage2_77920.png', width: 18.414, height: 15.414,),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 8,
              width: 415,
              top: 125,
              height: 736,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: 415,
                    top: 0,
                    height: 736,
                    child: Container(
                      width: 415,
                      height: 736,
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 46.088,
                    width: 302.2,
                    top: 92,
                    height: 294,
                    child: Image.asset('images/layerGroupImage2_77922.png', width: 302.2, height: 294,),
                  ),
                  Positioned(
                    left: 320.535,
                    width: 54.478,
                    top: 337,
                    height: 23,
                    child: Container(
                      width: 54.478,
                      height: 23,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            width: 54.478,
                            top: 0,
                            height: 23,
                            child: Container(
                              width: 54.478,
                              height: 23,
                              decoration: BoxDecoration(
                                color: const Color(0xffffffff),
                                border: Border.all(color: const Color(0x7f004643), width: 1),
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                          ),
                          
                        Positioned(
                          left: 0,
                          width: 54.478,
                          top: 0,
                          height: 23,
                          child: Container(
                            width: 54.478,
                            height: 23,
                            decoration: BoxDecoration(
                              color: const Color(0xffffffff),
                              border: Border.all(color: const Color(0x7f004643), width: 1),
                              borderRadius: BorderRadius.circular(12), // Adjusted border radius to fit the text
                            ),
                            child: Center(
                              child: Text(
                                getStatusForN(dataArray['n']!), // Using the getStatusForN function from DataPage.dart
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 12,
                                  color: const Color(0xff004643),
                                  fontFamily: 'Inter-Regular',
                                  fontWeight: FontWeight.normal
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ),


                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 26.558,
                    width: 233.304,
                    top: 337,
                    child: Text(
                      'Nitrogen Status',
                      textAlign: TextAlign.left,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 24, color: const Color(0xff333333), fontFamily: 'Inter-SemiBold', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 26.558,
                    width: 358.748,
                    top: 374,
                    height: 1,
                    child: Container(
                      width: 358.748,
                      height: 1,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0x7fe6ecf7), width: 1),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 25.53,
                    width: 358.748,
                    top: 417,
                    height: 1,
                    child: Container(
                      width: 358.748,
                      height: 1,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0x7fe6ecf7), width: 1),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 26.558,
                    width: 154.156,
                    top: 386,
                    child: Text(
                      'Descriptions',
                      textAlign: TextAlign.left,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 16, color: const Color(0xff5bb15a), fontFamily: 'Inter-SemiBold', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 26,
                    width: 328,
                    top: 447,
                    height: 138,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          width: 97,
                          top: 30,
                          height: 108,
                          child: Text(
                            'Condition\nPrice Type\nCategory\nLocation',
                            textAlign: TextAlign.left,
                            style: TextStyle(decoration: TextDecoration.none, fontSize: 14, color: const Color(0xff4f4f4f), fontFamily: 'Montserrat-Regular', fontWeight: FontWeight.normal),
                            maxLines: 9999,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Positioned(
                          left: 128,
                          width: 190,
                          top: 30,
                          height: 108,
                          child: Text(
                            'Organic\nFixed\nBeverages\nKualalumpur, Malaysia',
                            textAlign: TextAlign.left,
                            style: TextStyle(decoration: TextDecoration.none, fontSize: 14, color: const Color(0xff4f4f4f), fontFamily: 'Montserrat-Regular', fontWeight: FontWeight.normal),
                            maxLines: 9999,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Positioned(
                          left: 0,
                          width: 329,
                          top: 0,
                          height: 25,
                          child: Text(
                            'Details',
                            textAlign: TextAlign.left,
                            style: TextStyle(decoration: TextDecoration.none, fontSize: 18, color: const Color(0xff000000), fontFamily: 'Montserrat-SemiBold', fontWeight: FontWeight.normal),
                            maxLines: 9999,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 26,
                    width: 328,
                    top: 585,
                    height: 96,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          width: 329,
                          top: 0,
                          height: 24,
                          child: Text(
                            'Recommendation',
                            textAlign: TextAlign.left,
                            style: TextStyle(decoration: TextDecoration.none, fontSize: 18, color: const Color(0xff000000), fontFamily: 'Montserrat-SemiBold', fontWeight: FontWeight.normal),
                            maxLines: 9999,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Positioned(
                          left: 0,
                          width: 294.977,
                          top: 32,
                          height: 64,
                          child: Text(
  statusMessage,
  textAlign: TextAlign.left,
  style: TextStyle(
    decoration: TextDecoration.none,
    fontSize: 12,
    color: const Color(0xff4f4f4f),
    fontFamily: 'Montserrat-Medium',
    fontWeight: FontWeight.normal
  ),
  maxLines: 9999,
  overflow: TextOverflow.ellipsis,
)
                        ),
                      ],
                    ),
                  ),
              Positioned(
                left: 57.395,
                width: 279.587,
                top: 16,
                height: 255,
                child: SfRadialGauge(
                  enableLoadingAnimation: true,
                  animationDuration: 4500,
                  axes: <RadialAxis>[
                    RadialAxis(
                      minimum: 0,
                      maximum: 150,
                      pointers: <GaugePointer>[
                        NeedlePointer(
                          value: dataArray['n']!.toDouble(), // Using 4th index data as default
                          enableAnimation: true,
                        ),
                      ],
                      ranges: <GaugeRange>[
                        GaugeRange(startValue: 0, endValue: 50, color: Colors.green),
                        GaugeRange(startValue: 50, endValue: 100, color: Colors.orange),
                        GaugeRange(startValue: 100, endValue: 150, color: Colors.red),
                      ],
                      annotations: <GaugeAnnotation>[
                        GaugeAnnotation(
                          widget: Text(
                            dataArray['n'].toString(), // Displaying 4th index data
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          positionFactor: 0.5,
                          angle: 90,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              width: 430,
              top: 868,
              height: 64,
              child: Image.asset('images/layerImage_77947.png', width: 430, height: 64,),
            ),
          ],
        ),
      ),
    );
  }
}
