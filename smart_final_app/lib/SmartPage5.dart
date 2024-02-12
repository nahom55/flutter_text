import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:smart_soil_app/SmartPage2His.dart';
import 'package:smart_soil_app/main.dart';
import 'DataPage.dart';
import 'SmartPage2.dart';

class SmartPage5 extends StatefulWidget {
  SmartPage5({super.key});

  @override
  State<StatefulWidget> createState() => _SmartPage5();
}





class _SmartPage5 extends State<SmartPage5> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'This week';
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
                    child: Image.asset('images/image1_18638.png', width: 432, height: 115,),
                  ),
                  Positioned(
                    left: 45,
                    width: 343,
                    top: 40,
                    child: Text(
                      'History',
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
                    child: Image.asset('images/image2_18640.png', width: 18.414, height: 15.414,),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              width: 430,
              top: 868,
              height: 64,
              child: Image.asset('images/image_18653.png', width: 430, height: 64,),
            ),
            Positioned(
              left: 19,
              width: 392,
              top: 133,
              height: 295,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    width: 392,
                    top: 0,
                    height: 295,
                    child: Container(
                      width: 392,
                      height: 295,
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  

                  
 Positioned(
      left: 0,
      width: 392,
      top: 0,
      height: 295,
      child: Container(
        width: 392,
        height: 295,
        decoration: BoxDecoration(
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),


Positioned(
  left: 0,
  width: 392,
  top: 45,
  height: 260, // Adjusted height value to accommodate legend
  child: Stack(
    children: [
      Container(
        width: 392,
        height: 210, // Adjusted height value for the chart
        child: BarChartWidget.withSampleData(),
      ), // bar chart section
      Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Container(
          margin: EdgeInsets.only(bottom: 10), // Adjusted margin value
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LegendItem(color: Colors.blue, label: 'Location'),
              SizedBox(width: 16),
              LegendItem(color: Colors.green, label: 'Samples'),
            ],
          ),
        ),
      ),
    ],
  ),
),


  Positioned(
  left: 257,
  width: 162.903,
  top: 10,
  height: 26,
  child: Stack(
    children: [
      Material( // Add Material widget here
        child: Positioned(
          left: 0,
          bottom: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 10),
              DropdownButton<String>(
                value: dropdownValue,
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>['This week', 'Last month', 'Last year',]
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    ],
  ),
),

                      
                    
                  
                  Positioned(
                    left: 22.517,
                    width: 82.88,
                    top: 12,
                    child: Text(
                      'History',
                      textAlign: TextAlign.left,
                      style: TextStyle(decoration: TextDecoration.none, fontSize: 15, color: const Color(0xff05004e), fontFamily: 'Poppins-SemiBold', fontWeight: FontWeight.normal),
                      maxLines: 9999,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ), // top produts on bar chart
                ],
              ),
            ),
            Positioned(
              left: 19,
              width: 392,
              top: 449,
              height: 367,
              child: Stack(
                children: [
                  Positioned(
  left: 0,
  width: 392,
  top: 0,
  height: 367, // Increased height by 30 pixels
  child: Container(
    width: 392,
    height: 367,
    decoration: BoxDecoration(
      color: Colors.white, // Set background color to white
      borderRadius: BorderRadius.circular(10), // Add 10px border radius
    ),
  ),
),
// bottom container image
                  Positioned(
                    left: 0,
                    width: 383,
                    top: 0,
                    height: 367,
                    child: Container(
                      width: 383,
                      height: 237,
                      decoration: BoxDecoration(
                        boxShadow: const [BoxShadow(color: const Color(0x80ededed), offset: Offset(0, 4), blurRadius: 20),],
                      ),
                    ),
                  ), // box decoration for above box
                  





                  
    
Positioned(
  left: 0,
  width: 392,
  top: 0,
  height: 367,
  child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SizedBox(
              width: 584,
              height: 474,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 1),
                child: DataTable(
                  columnSpacing: 2,
                  columns: List<DataColumn>.generate(
                    keys.length,
                    (index) {
                      if (index == keys.length - 1) {
                        // For the "Action" column, add the DataColumn
                        return DataColumn(label: Text(keys[index]));
                      } else {
                        // For other columns, display dynamic keys
                        return DataColumn(label: Text(keys[index].toString()));
                      }
                    },
                  ),
                  rows: List<DataRow>.generate(
                    data.length,
                    (index) => DataRow(cells: List<DataCell>.generate(
                      keys.length,
                      (cellIndex) {
                        if (cellIndex == keys.length - 1) {
                          // For the "Action" column, add the button
                          return DataCell(
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SmartPage2His()),
      );
                                // Handle button press
                                print(cellIndex + 1);
                              },
                              child: Text('>'),
                            ),
                          );
                        } else {
                          // For other cells, display dynamic values
                          return DataCell(
                            Text(data[index]['value${cellIndex + 1}'].toString()),
                          );
                        }
                      },
                    )),
                  ),
                ),
              ),
            ),
          ),
        ),
),





                  ],
              ),
            ), // conainer position for all
          ],
        ),
      ),
    );
  }
}
