import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';
import 'package:smart_soil_app/DataPage.dart';
import 'package:smart_soil_app/NutrientPages/SmartPage3P.dart';
import 'package:smart_soil_app/NutrientPages/SmartPage3h.dart';
import 'package:smart_soil_app/NutrientPages/SmartPage3k.dart';
import 'package:smart_soil_app/NutrientPages/SmartPage3n.dart';
import 'package:smart_soil_app/NutrientPages/SmartPage3ph.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';



class SmartPage2His extends StatefulWidget {
  SmartPage2His({super.key});

  @override
  State<StatefulWidget> createState() => _SmartPage2His();
}

class _SmartPage2His extends State<SmartPage2His> {
  @override
  Widget build(BuildContext context) {
    TimeOfDay _selectedTime = TimeOfDay.now();
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('d MMMM, yyyy').format(now);
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
              left: -2,
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
                    child: Image.asset('images/image1_77671.png', width: 432, height: 115,),
                  ),
                  Positioned(
                    left: 45,
                    width: 343,
                    top: 40,
                    child: Text(
                      'Dashboard',
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
                    child: Image.asset('images/image2_77674.png', width: 18.414, height: 15.414,),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 25,
              top: 158,
              child: Text(
                'Soil Status',
                textAlign: TextAlign.left,
                style: TextStyle(decoration: TextDecoration.none, fontSize: 18, color: const Color(0xff4f4f4f), fontFamily: 'Montserrat-Bold', fontWeight: FontWeight.normal),
                maxLines: 9999,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Positioned(
              left: 17,
              width: 395,
              top: 203,
              height: 102,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: 395,
                    top: 0,
                    height: 102,
                    child: Container(
                      width: 395,
                      height: 102,
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                  ),
                                    Positioned(
  left: 349,
  width: 30,
  top: 36,
  height: 30,
  child: ElevatedButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SmartPage3n()),
      );
    },
    style: ElevatedButton.styleFrom(
      padding: EdgeInsets.zero,
      shape: CircleBorder(),
    ),
    child: Ink.image(
      image: AssetImage('images/image1_122813.png'),
      width: 30,
      height: 30,
      fit: BoxFit.cover,
    ),
  ),
),
                                    Positioned(
  left: 9,
  width: 96,
  top: 0,
  height: 99,
  child: SfRadialGauge(
    enableLoadingAnimation: true,
    animationDuration: 3500,
    axes: <RadialAxis>[
      RadialAxis(
        minimum: 0,
        maximum: 150,
        pointers: <GaugePointer>[
          NeedlePointer(
            value: dataArray1['n']!.toDouble(), // Using 4th index data as default
            enableAnimation: true,
            needleLength: 0.7, // Adjust length if needed
            needleStartWidth: 0.5, // Set a thinner start width
            needleEndWidth: 2,
          ),
        ],
        ranges: <GaugeRange>[
  GaugeRange(startValue: 0, endValue: 50, color: Colors.green, ), // Decrease the thickness as needed
  GaugeRange(startValue: 50, endValue: 100, color: Colors.orange, ), // Decrease the thickness as needed
  GaugeRange(startValue: 100, endValue: 150, color: Colors.red, ), // Decrease the thickness as needed
],

        annotations: <GaugeAnnotation>[
          GaugeAnnotation(
            widget: Text(
              dataArray1['n'].toString(), // Displaying 4th index data
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            positionFactor: 0.8,
            angle: 90,
          ),
        ],
      ),
    ],
  ),
),
                  Positioned(
                    left: 239,
                    top: 3.587,
                    child: Text(
                      '$formattedDate',
                      textAlign: TextAlign.left,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 10, color: const Color(0xff888888), fontFamily: 'Ubuntu-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 119,
                    width: 224,
                    top: 35,
                    height: 16,
                    child: Text(
                      'Your current soil Nitrogen status',
                      textAlign: TextAlign.left,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 11, color: const Color(0xff333333), fontFamily: 'Ubuntu-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 121,
                    width: 156.406,
                    top: 68.587,
                    height: 15,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 99.406,
                          top: 3.054,
                          child: Text(
                            'Addis Abeba',
                            textAlign: TextAlign.left,
                            style: TextStyle(decoration: TextDecoration.none, fontSize: 10, color: const Color(0xff888888), fontFamily: 'Ubuntu-Regular', fontWeight: FontWeight.normal),
                            maxLines: 9999,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Positioned(
                          left: 85,
                          width: 10,
                          top: 0.413,
                          height: 11.761,
                          child: Image.asset('images/image1_77706.png', width: 10, height: 11.761,),
                        ),
                        Positioned(
                          left: 73.67,
                          width: 1,
                          top: 3,
                          height: 8.108,
                          child: Image.asset('images/image2_77702.png', width: 1, height: 8.108,),
                        ),
                        Positioned(
                          left: 11,
                          width: 59,
                          top: 0,
                          height: 15,
                          child: Container(
                            width: 59,
                            height: 15,
                            decoration: BoxDecoration(
                              color: const Color(0xffe1fcef),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                        Positioned(
  left: 27,
  top: 3.413,
  child: Text(
    '${_selectedTime.format(context)}',
    textAlign: TextAlign.left,
    style: TextStyle(decoration: TextDecoration.none, fontSize: 10, color: const Color(0xff888888), fontFamily: 'Ubuntu-Regular', fontWeight: FontWeight.normal),
    maxLines: 9999,
    overflow: TextOverflow.ellipsis,
  ),
),

                        Positioned(
                          left: 0,
                          width: 11,
                          top: 1.413,
                          height: 11,
                          child: Image.asset('images/image3_122740.png', width: 11, height: 11,),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 115,
                    top: 4,
                    child: Text(
                      'Nitrogen Level',
                      textAlign: TextAlign.left,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 10, color: const Color(0xff000000), fontFamily: 'Ubuntu-Medium', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 17,
              width: 395,
              top: 663,
              height: 102,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: 395,
                    top: 0,
                    height: 102,
                    child: Container(
                      width: 395,
                      height: 102,
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                  ),
                                    Positioned(
  left: 349,
  width: 30,
  top: 36,
  height: 30,
  child: ElevatedButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SmartPage3ph()),
      );
    },
    style: ElevatedButton.styleFrom(
      padding: EdgeInsets.zero,
      shape: CircleBorder(),
    ),
    child: Ink.image(
      image: AssetImage('images/image1_122813.png'),
      width: 30,
      height: 30,
      fit: BoxFit.cover,
    ),
  ),
),
                                    Positioned(
  left: 9,
  width: 96,
  top: 0,
  height: 99,
  child: SfRadialGauge(
    enableLoadingAnimation: true,
    animationDuration: 3500,
    axes: <RadialAxis>[
      RadialAxis(
        minimum: 0,
        maximum: 150,
        pointers: <GaugePointer>[
          NeedlePointer(
            value: dataArray1['ph']!.toDouble(), // Using 4th index data as default
            enableAnimation: true,
            needleLength: 0.7, // Adjust length if needed
            needleStartWidth: 0.5, // Set a thinner start width
            needleEndWidth: 2,
          ),
        ],
        ranges: <GaugeRange>[
  GaugeRange(startValue: 0, endValue: 50, color: Colors.green, ), // Decrease the thickness as needed
  GaugeRange(startValue: 50, endValue: 100, color: Colors.orange, ), // Decrease the thickness as needed
  GaugeRange(startValue: 100, endValue: 150, color: Colors.red, ), // Decrease the thickness as needed
],

        annotations: <GaugeAnnotation>[
          GaugeAnnotation(
            widget: Text(
              dataArray1['ph'].toString(), // Displaying 4th index data
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            positionFactor: 0.8,
            angle: 90,
          ),
        ],
      ),
    ],
  ),
),
                  Positioned(
                    left: 239,
                    top: 3.587,
                    child: Text(
                      '$formattedDate',
                      textAlign: TextAlign.left,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 10, color: const Color(0xff888888), fontFamily: 'Ubuntu-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 119,
                    width: 224,
                    top: 35,
                    height: 16,
                    child: Text(
                      'Your current soil pH status',
                      textAlign: TextAlign.left,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 11, color: const Color(0xff333333), fontFamily: 'Ubuntu-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 121,
                    width: 156.406,
                    top: 68.587,
                    height: 15,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 99.406,
                          top: 3.054,
                          child: Text(
                            'Addis Abeba',
                            textAlign: TextAlign.left,
                            style: TextStyle(decoration: TextDecoration.none, fontSize: 10, color: const Color(0xff888888), fontFamily: 'Ubuntu-Regular', fontWeight: FontWeight.normal),
                            maxLines: 9999,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Positioned(
                          left: 85,
                          width: 10,
                          top: 0.413,
                          height: 11.761,
                          child: Image.asset('images/image1_122842.png', width: 10, height: 11.761,),
                        ),
                        Positioned(
                          left: 73.67,
                          width: 1,
                          top: 3,
                          height: 8.108,
                          child: Image.asset('images/image2_122843.png', width: 1, height: 8.108,),
                        ),
                        Positioned(
                          left: 11,
                          width: 59,
                          top: 0,
                          height: 15,
                          child: Container(
                            width: 59,
                            height: 15,
                            decoration: BoxDecoration(
                              color: const Color(0xffe1fcef),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                        Positioned(
  left: 27,
  top: 3.413,
  child: Text(
    '${_selectedTime.format(context)}',
    textAlign: TextAlign.left,
    style: TextStyle(decoration: TextDecoration.none, fontSize: 10, color: const Color(0xff888888), fontFamily: 'Ubuntu-Regular', fontWeight: FontWeight.normal),
    maxLines: 9999,
    overflow: TextOverflow.ellipsis,
  ),
),
                        Positioned(
                          left: 0,
                          width: 11,
                          top: 1.413,
                          height: 11,
                          child: Image.asset('images/image3_122846.png', width: 11, height: 11,),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 115,
                    top: 4,
                    child: Text(
                      'PH Level',
                      textAlign: TextAlign.left,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 10, color: const Color(0xff000000), fontFamily: 'Ubuntu-Medium', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 17,
              width: 395,
              top: 318,
              height: 102,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: 395,
                    top: 0,
                    height: 102,
                    child: Container(
                      width: 395,
                      height: 102,
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                  ),
                                    Positioned(
  left: 349,
  width: 30,
  top: 36,
  height: 30,
  child: ElevatedButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SmartPage3k()),
      );
    },
    style: ElevatedButton.styleFrom(
      padding: EdgeInsets.zero,
      shape: CircleBorder(),
    ),
    child: Ink.image(
      image: AssetImage('images/image1_122813.png'),
      width: 30,
      height: 30,
      fit: BoxFit.cover,
    ),
  ),
),
                  Positioned(
  left: 9,
  width: 96,
  top: 0,
  height: 99,
  child: SfRadialGauge(
    enableLoadingAnimation: true,
    animationDuration: 3500,
    axes: <RadialAxis>[
      RadialAxis(
        minimum: 0,
        maximum: 150,
        pointers: <GaugePointer>[
          NeedlePointer(
            value: dataArray1['k']!.toDouble(), // Using 4th index data as default
            enableAnimation: true,
            needleLength: 0.7, // Adjust length if needed
            needleStartWidth: 0.5, // Set a thinner start width
            needleEndWidth: 2,
          ),
        ],
        ranges: <GaugeRange>[
  GaugeRange(startValue: 0, endValue: 50, color: Colors.green, ), // Decrease the thickness as needed
  GaugeRange(startValue: 50, endValue: 100, color: Colors.orange, ), // Decrease the thickness as needed
  GaugeRange(startValue: 100, endValue: 150, color: Colors.red, ), // Decrease the thickness as needed
],

        annotations: <GaugeAnnotation>[
          GaugeAnnotation(
            widget: Text(
              dataArray1['k'].toString(), // Displaying 4th index data
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            positionFactor: 0.8,
            angle: 90,
          ),
        ],
      ),
    ],
  ),
),
                  Positioned(
                    left: 239,
                    top: 3.587,
                    child: Text(
                      '$formattedDate',
                      textAlign: TextAlign.left,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 10, color: const Color(0xff888888), fontFamily: 'Ubuntu-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 119,
                    width: 224,
                    top: 35,
                    height: 16,
                    child: Text(
                      'Your current soil Potassium status',
                      textAlign: TextAlign.left,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 11, color: const Color(0xff333333), fontFamily: 'Ubuntu-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 121,
                    width: 156.406,
                    top: 68.587,
                    height: 15,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 99.406,
                          top: 3.054,
                          child: Text(
                            'Addis Abeba',
                            textAlign: TextAlign.left,
                            style: TextStyle(decoration: TextDecoration.none, fontSize: 10, color: const Color(0xff888888), fontFamily: 'Ubuntu-Regular', fontWeight: FontWeight.normal),
                            maxLines: 9999,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Positioned(
                          left: 85,
                          width: 10,
                          top: 0.413,
                          height: 11.761,
                          child: Image.asset('images/image1_122779.png', width: 10, height: 11.761,),
                        ),
                        Positioned(
                          left: 73.67,
                          width: 1,
                          top: 3,
                          height: 8.108,
                          child: Image.asset('images/image2_122780.png', width: 1, height: 8.108,),
                        ),
                        Positioned(
                          left: 11,
                          width: 59,
                          top: 0,
                          height: 15,
                          child: Container(
                            width: 59,
                            height: 15,
                            decoration: BoxDecoration(
                              color: const Color(0xffe1fcef),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                       Positioned(
  left: 27,
  top: 3.413,
  child: Text(
    '${_selectedTime.format(context)}',
    textAlign: TextAlign.left,
    style: TextStyle(decoration: TextDecoration.none, fontSize: 10, color: const Color(0xff888888), fontFamily: 'Ubuntu-Regular', fontWeight: FontWeight.normal),
    maxLines: 9999,
    overflow: TextOverflow.ellipsis,
  ),
),
                        Positioned(
                          left: 0,
                          width: 11,
                          top: 1.413,
                          height: 11,
                          child: Image.asset('images/image3_122783.png', width: 11, height: 11,),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 115,
                    top: 4,
                    child: Text(
                      'Potassium Level',
                      textAlign: TextAlign.left,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 10, color: const Color(0xff000000), fontFamily: 'Ubuntu-Medium', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 17,
              width: 395,
              top: 433,
              height: 102,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: 395,
                    top: 0,
                    height: 102,
                    child: Container(
                      width: 395,
                      height: 102,
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                  ),
                                    Positioned(
  left: 349,
  width: 30,
  top: 36,
  height: 30,
  child: ElevatedButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SmartPage3p()),
      );
    },
    style: ElevatedButton.styleFrom(
      padding: EdgeInsets.zero,
      shape: CircleBorder(),
    ),
    child: Ink.image(
      image: AssetImage('images/image1_122813.png'),
      width: 30,
      height: 30,
      fit: BoxFit.cover,
    ),
  ),
),
                  Positioned(
  left: 9,
  width: 96,
  top: 0,
  height: 99,
  child: SfRadialGauge(
    enableLoadingAnimation: true,
    animationDuration: 3500,
    axes: <RadialAxis>[
      RadialAxis(
        minimum: 0,
        maximum: 150,
        pointers: <GaugePointer>[
          NeedlePointer(
            value: dataArray1['p']!.toDouble(), // Using 4th index data as default
            enableAnimation: true,
            needleLength: 0.7, // Adjust length if needed
            needleStartWidth: 0.5, // Set a thinner start width
            needleEndWidth: 2,
          ),
        ],
        ranges: <GaugeRange>[
  GaugeRange(startValue: 0, endValue: 50, color: Colors.green, ), // Decrease the thickness as needed
  GaugeRange(startValue: 50, endValue: 100, color: Colors.orange, ), // Decrease the thickness as needed
  GaugeRange(startValue: 100, endValue: 150, color: Colors.red, ), // Decrease the thickness as needed
],

        annotations: <GaugeAnnotation>[
          GaugeAnnotation(
            widget: Text(
              dataArray1['p'].toString(), // Displaying 4th index data
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            positionFactor: 0.8,
            angle: 90,
          ),
        ],
      ),
    ],
  ),
),

                  Positioned(
                    left: 239,
                    top: 3.587,
                    child: Text(
                      '$formattedDate',
                      textAlign: TextAlign.left,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 10, color: const Color(0xff888888), fontFamily: 'Ubuntu-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 119,
                    width: 224,
                    top: 35,
                    height: 16,
                    child: Text(
                      'Your current Phosphorous status',
                      textAlign: TextAlign.left,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 11, color: const Color(0xff333333), fontFamily: 'Ubuntu-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 121,
                    width: 156.406,
                    top: 68.587,
                    height: 15,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 99.406,
                          top: 3.054,
                          child: Text(
                            'Addis Abeba',
                            textAlign: TextAlign.left,
                            style: TextStyle(decoration: TextDecoration.none, fontSize: 10, color: const Color(0xff888888), fontFamily: 'Ubuntu-Regular', fontWeight: FontWeight.normal),
                            maxLines: 9999,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Positioned(
                          left: 85,
                          width: 10,
                          top: 0.413,
                          height: 11.761,
                          child: Image.asset('images/image1_122800.png', width: 10, height: 11.761,),
                        ),
                        Positioned(
                          left: 73.67,
                          width: 1,
                          top: 3,
                          height: 8.108,
                          child: Image.asset('images/image2_122801.png', width: 1, height: 8.108,),
                        ),
                        Positioned(
                          left: 11,
                          width: 59,
                          top: 0,
                          height: 15,
                          child: Container(
                            width: 59,
                            height: 15,
                            decoration: BoxDecoration(
                              color: const Color(0xffe1fcef),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                        Positioned(
  left: 27,
  top: 3.413,
  child: Text(
    '${_selectedTime.format(context)}',
    textAlign: TextAlign.left,
    style: TextStyle(decoration: TextDecoration.none, fontSize: 10, color: const Color(0xff888888), fontFamily: 'Ubuntu-Regular', fontWeight: FontWeight.normal),
    maxLines: 9999,
    overflow: TextOverflow.ellipsis,
  ),
),
                        Positioned(
                          left: 0,
                          width: 11,
                          top: 1.413,
                          height: 11,
                          child: Image.asset('images/image3_122804.png', width: 11, height: 11,),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 115,
                    top: 4,
                    child: Text(
                      'Phosphorous Level',
                      textAlign: TextAlign.left,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 10, color: const Color(0xff000000), fontFamily: 'Ubuntu-Medium', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 17,
              width: 395,
              top: 548,
              height: 102,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: 395,
                    top: 0,
                    height: 102,
                    child: Container(
                      width: 395,
                      height: 102,
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                  ),
                  Positioned(
  left: 349,
  width: 30,
  top: 36,
  height: 30,
  child: ElevatedButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SmartPage3h()),
      );
    },
    style: ElevatedButton.styleFrom(
      padding: EdgeInsets.zero,
      shape: CircleBorder(),
    ),
    child: Ink.image(
      image: AssetImage('images/image1_122813.png'),
      width: 30,
      height: 30,
      fit: BoxFit.cover,
    ),
  ),
),

                  Positioned(
  left: 9,
  width: 96,
  top: 0,
  height: 99,
  child: SfRadialGauge(
    enableLoadingAnimation: true,
    animationDuration: 3500,
    axes: <RadialAxis>[
      RadialAxis(
        minimum: 0,
        maximum: 150,
        pointers: <GaugePointer>[
          NeedlePointer(
            value: dataArray1['h']!.toDouble(), // Using 4th index data as default
            enableAnimation: true,
            needleLength: 0.7, // Adjust length if needed
            needleStartWidth: 0.5, // Set a thinner start width
            needleEndWidth: 2,
          ),
        ],
        ranges: <GaugeRange>[
  GaugeRange(startValue: 0, endValue: 50, color: Colors.green, ), // Decrease the thickness as needed
  GaugeRange(startValue: 50, endValue: 100, color: Colors.orange, ), // Decrease the thickness as needed
  GaugeRange(startValue: 100, endValue: 150, color: Colors.red, ), // Decrease the thickness as needed
],

        annotations: <GaugeAnnotation>[
          GaugeAnnotation(
            widget: Text(
              dataArray1['h'].toString(), // Displaying 4th index data
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            positionFactor: 0.8,
            angle: 90,
          ),
        ],
      ),
    ],
  ),
),

                  Positioned(
                    left: 239,
                    top: 3.587,
                    child: Text(
                      '$formattedDate',
                      textAlign: TextAlign.left,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 10, color: const Color(0xff888888), fontFamily: 'Ubuntu-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 119,
                    width: 224,
                    top: 35,
                    height: 16,
                    child: Text(
                      'Your current soil Humidity status',
                      textAlign: TextAlign.left,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 11, color: const Color(0xff333333), fontFamily: 'Ubuntu-Regular', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Positioned(
                    left: 121,
                    width: 156.406,
                    top: 68.587,
                    height: 15,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 99.406,
                          top: 3.054,
                          child: Text(
                            'Addis Abeba',
                            textAlign: TextAlign.left,
                            style: TextStyle(decoration: TextDecoration.none, fontSize: 10, color: const Color(0xff888888), fontFamily: 'Ubuntu-Regular', fontWeight: FontWeight.normal),
                            maxLines: 9999,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Positioned(
                          left: 85,
                          width: 10,
                          top: 0.413,
                          height: 11.761,
                          child: Image.asset('images/image1_122821.png', width: 10, height: 11.761,),
                        ),
                        Positioned(
                          left: 73.67,
                          width: 1,
                          top: 3,
                          height: 8.108,
                          child: Image.asset('images/image2_122822.png', width: 1, height: 8.108,),
                        ),
                        Positioned(
                          left: 11,
                          width: 59,
                          top: 0,
                          height: 15,
                          child: Container(
                            width: 59,
                            height: 15,
                            decoration: BoxDecoration(
                              color: const Color(0xffe1fcef),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                        Positioned(
  left: 27,
  top: 3.413,
  child: Text(
    '${_selectedTime.format(context)}',
    textAlign: TextAlign.left,
    style: TextStyle(decoration: TextDecoration.none, fontSize: 10, color: const Color(0xff888888), fontFamily: 'Ubuntu-Regular', fontWeight: FontWeight.normal),
    maxLines: 9999,
    overflow: TextOverflow.ellipsis,
  ),
),
                        Positioned(
                          left: 0,
                          width: 11,
                          top: 1.413,
                          height: 11,
                          child: Image.asset('images/image3_122825.png', width: 11, height: 11,),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 115,
                    top: 4,
                    child: Text(
                      'Humidity Level',
                      textAlign: TextAlign.left,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 10, color: const Color(0xff000000), fontFamily: 'Ubuntu-Medium', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: -2,
              width: 430,
              top: 868,
              height: 64,
              child: Image.asset('images/image_77784.png', width: 430, height: 64,),
            ),
          ],
        ),
      ),
    );
  }
}
