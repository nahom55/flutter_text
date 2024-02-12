import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:permission_handler/permission_handler.dart';
import 'SmartPage2.dart';
import 'SmartPage4.dart';
import 'SmartPage5.dart';

class SmartPage1 extends StatefulWidget {
  SmartPage1({super.key});

  @override
  State<StatefulWidget> createState() => _SmartPage1();
}

class _SmartPage1 extends State<SmartPage1> {
  BluetoothConnection? connection;
  String dataReceived = 'Waiting for data...';
  List<BluetoothDevice> bondedDevices = [];
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _checkPermissions();
  }

  void _checkPermissions() async {
    if (await Permission.bluetooth.request().isGranted) {
      // Bluetooth permissions granted, proceed to connect
      _getBondedDevices();
    } else {
      // Handle the scenario when Bluetooth permission is denied
      // You can display a message or ask for permission again
    }
  }

  Future<void> _getBondedDevices() async {
    setState(() {
      isLoading = true;
    });
    try {
      List<BluetoothDevice> devices =
          await FlutterBluetoothSerial.instance.getBondedDevices();
      setState(() {
        bondedDevices = devices;
        isLoading = false;
      });
    } catch (e) {
      print('Error getting bonded devices: $e');
      setState(() {
        isLoading = false;
      });
    }
  }

  Future<void> _connectToDevice(BluetoothDevice device) async {
    try {
      BluetoothConnection.toAddress(device.address)
          .then((_connection) {
        print('Connected to the device');
        setState(() {
          connection = _connection;
        });
        connection!.input?.listen((Uint8List data) {
          setState(() {
            dataReceived = String.fromCharCodes(data);
          });
        });
        Navigator.of(context).pop(); // Close device list dialog
      });
    } catch (error) {
      print('Cannot connect, exception occurred: $error');
    }
  }

  void _sendDataToArduino(String data) {
    if (connection != null && connection!.isConnected) {
      try {
        connection!.output.add(utf8.encode(data + '\r\n'));
        print('Data sent to Arduino: $data');
      } catch (e) {
        print('Error sending data: $e');
      }
    } else {
      print('Bluetooth connection is not available');
    }
  }
  @override
  
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
        width: 430,
        decoration: BoxDecoration(
          color: const Color(0xffeff1f3),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 436,
                  height: 392,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        right: 0,
                        top: 0,
                        height: 323,
                        child: Container(
                          height: 323,
                          decoration: BoxDecoration(
                            color: const Color(0xff34a853),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        top: 36,
                        height: 252,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 27,
                              width: 365,
                              top: 0,
                              height: 32,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
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
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    mainAxisSize: MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        child: Container(
                                                          width: double.infinity,
                                                          height: 20,
                                                          child: Stack(
                                                            children: [
                                                              Positioned(
                                                                right: 0,
                                                                width: 8.25,
                                                                top: 9.75,
                                                                height: 4.5,
                                                                child: Image.asset('images/image_114442.png', width: 8.25, height: 4.5, fit: BoxFit.cover,),
                                                              ),
                                                              Positioned(
                                                                left: 0,
                                                                width: 306,
                                                                top: 0,
                                                                height: 20,
                                                                child: Row(
                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                  children: [
                                                                    Column(
                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                      children: [
                                                                        SizedBox(
                                                                          width: 116,
                                                                          child: Text(
                                                                            'Hello User',
                                                                            textAlign: TextAlign.center,
                                                                            style: TextStyle(decoration: TextDecoration.none, fontSize: 17, color: Color.fromARGB(255, 255, 255, 255), fontFamily: 'Poppins-Bold', fontWeight: FontWeight.normal),
                                                                            maxLines: 9999,
                                                                            overflow: TextOverflow.ellipsis,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    const SizedBox(width: 170),
                                                                    Column(
                                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                                      mainAxisSize: MainAxisSize.min,
                                                                      children: [
                                                                        Text(
                                                                          'Eng',
                                                                          textAlign: TextAlign.center,
                                                                          style: TextStyle(decoration: TextDecoration.none, fontSize: 11.9, color: const Color(0xffffffff), fontFamily: 'DMSans-Regular', fontWeight: FontWeight.normal),
                                                                          maxLines: 9999,
                                                                          overflow: TextOverflow.ellipsis,
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
                                                const SizedBox(width: 13.875),
                                                Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Image.asset('images/image_114520.png', width: 32, height: 32,),
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
                            Positioned(
                              left: 10,
                              right: 158.611,
                              top: 107,
                              height: 145,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 35,
                                    top: 0,
                                    child: Text(
                                      '29°',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(decoration: TextDecoration.none, fontSize: 64, color: const Color(0xffffffff), fontFamily: 'PTSans-Regular', fontWeight: FontWeight.normal),
                                      maxLines: 9999,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Positioned(
                                    left: 19,
                                    right: 116.38900000000001,
                                    bottom: 0,
                                    child: Text(
                                      'H:32°   L:27°\nEthiopia, DireDawa',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(decoration: TextDecoration.none, fontSize: 15, color: const Color(0xffffffff), fontFamily: 'Poppins-Regular', fontWeight: FontWeight.normal),
                                      maxLines: 9999,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              right: 10,
                              width: 138.611,
                              top: 96.255,
                              height: 146.745,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    width: 96.658,
                                    top: 0,
                                    height: 71.278,
                                    child: Image.asset('images/layer_114521.png', width: 96.658, height: 71.278,),
                                  ),
                                  Positioned(
                                    left: 10,
                                    width: 85.611,
                                    bottom: -2,
                                    height: 25,
                                    child: Text(
                                      'Cloudy',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(decoration: TextDecoration.none, fontSize: 20, color: const Color(0xffffffff), fontFamily: 'PTSans-Regular', fontWeight: FontWeight.normal),
                                      maxLines: 9999,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        top: 0,
                        height: 322,
                        child: Image.asset('images/image2_114461.png', height: 322, fit: BoxFit.cover,),
                      ),
                      Positioned(
                        left: 26,
                        right: 26,
                        bottom: 0,
                        height: 83,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              right: 0,
                              top: 0,
                              bottom: 0,
                              child: Image.asset('images/image1_114421.png'),
                            ),
                            Positioned(
                              left: 3,
                              width: 104.427,
                              top: 24,
                              height: 34,
                              child: Container(
                                width: 104.427,
                                height: 34,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10.781124114990234, top: 7, right: 6.6460418701171875, bottom: 7),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: double.infinity,
                                              child: Text(
                                                'Samples',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(decoration: TextDecoration.none, fontSize: 14, color: const Color(0xff667084), fontFamily: 'Inter-SemiBold', fontWeight: FontWeight.normal),
                                                maxLines: 9999,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(width: 4.000003814697266),
                                      Column(
                                        children: [
                                          Expanded(
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Column(
                                                    children: [
                                                      Expanded(
                                                        child: Container(
                                                          width: 24,
                                                          decoration: BoxDecoration(
                                                            color: const Color(0xfff2f4f6),
                                                            borderRadius: BorderRadius.circular(10),
                                                          ),
                                                          child: Padding(
                                                            padding: const EdgeInsets.only(left: 0, top: 2, right: 0, bottom: 2),
                                                            child: Row(
                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                              children: [
                                                                Expanded(
                                                                  child: Column(
                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                    mainAxisSize: MainAxisSize.max,
                                                                    children: [
                                                                      Container(
                                                                        width: double.infinity,
                                                                        child: Text(
                                                                          '3',
                                                                          textAlign: TextAlign.center,
                                                                          style: TextStyle(decoration: TextDecoration.none, fontSize: 12, color: const Color(0xff334155), fontFamily: 'Inter-Medium', fontWeight: FontWeight.normal),
                                                                          maxLines: 9999,
                                                                          overflow: TextOverflow.ellipsis,
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
                            ),
                            Positioned(
                              left: 101.427,
                              width: 104.427,
                              top: 24,
                              height: 34,
                              child: Container(
                                width: 104.427,
                                height: 34,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5.281124114990234, top: 7, right: 4.1460418701171875, bottom: 7),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: double.infinity,
                                              child: Text(
                                                'Locations',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(decoration: TextDecoration.none, fontSize: 14, color: const Color(0xff667084), fontFamily: 'Inter-SemiBold', fontWeight: FontWeight.normal),
                                                maxLines: 9999,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(width: 4.000003814697266),
                                      Column(
                                        children: [
                                          Expanded(
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Column(
                                                    children: [
                                                      Expanded(
                                                        child: Container(
                                                          width: 24,
                                                          decoration: BoxDecoration(
                                                            color: const Color(0xfff2f4f6),
                                                            borderRadius: BorderRadius.circular(10),
                                                          ),
                                                          child: Padding(
                                                            padding: const EdgeInsets.only(left: 0, top: 2, right: 0, bottom: 2),
                                                            child: Row(
                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                              children: [
                                                                Expanded(
                                                                  child: Column(
                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                    mainAxisSize: MainAxisSize.max,
                                                                    children: [
                                                                      Container(
                                                                        width: double.infinity,
                                                                        child: Text(
                                                                          '1',
                                                                          textAlign: TextAlign.center,
                                                                          style: TextStyle(decoration: TextDecoration.none, fontSize: 12, color: const Color(0xff334155), fontFamily: 'Inter-Medium', fontWeight: FontWeight.normal),
                                                                          maxLines: 9999,
                                                                          overflow: TextOverflow.ellipsis,
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
                            ),
                            Positioned(
                              right: 62.71899999999998,
                              width: 118.427,
                              top: 23,
                              height: 36,
                              child: Container(
                                width: 104.427,
                                height: 36,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5.781124114990234, top: 8, right: 4.6460418701171875, bottom: 8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: double.infinity,
                                              child: Text(
                                                'Today\'s Data',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(decoration: TextDecoration.none, fontSize: 14, color: const Color(0xff667084), fontFamily: 'Inter-SemiBold', fontWeight: FontWeight.normal),
                                                maxLines: 9999,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(width: 4.000003814697266),
                                      Column(
                                        children: [
                                          Expanded(
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Column(
                                                    children: [
                                                      Expanded(
                                                        child: Container(
                                                          width: 24,
                                                          decoration: BoxDecoration(
                                                            color: const Color(0xfff2f4f6),
                                                            borderRadius: BorderRadius.circular(10),
                                                          ),
                                                          child: Padding(
                                                            padding: const EdgeInsets.only(left: 0, top: 2, right: 0, bottom: 2),
                                                            child: Row(
                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                              children: [
                                                                Expanded(
                                                                  child: Column(
                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                    mainAxisSize: MainAxisSize.max,
                                                                    children: [
                                                                      Container(
                                                                        width: double.infinity,
                                                                        child: Text(
                                                                          '1',
                                                                          textAlign: TextAlign.center,
                                                                          style: TextStyle(decoration: TextDecoration.none, fontSize: 12, color: const Color(0xff334155), fontFamily: 'Inter-Medium', fontWeight: FontWeight.normal),
                                                                          maxLines: 9999,
                                                                          overflow: TextOverflow.ellipsis,
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
                            ),
                            Positioned(
                              right: 14,
                              width: 40,
                              top: 21,
                              height: 40,
                              child: Image.asset('images/refres.png', width: 40, height: 40,), //'images/image2_114523.png'
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 26),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 436,
                  height: 424,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 0, right: 10, bottom: 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
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
                                            height: 22,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  left: 18,
                                                  right: 263,
                                                  top: 0,
                                                  bottom: 0,
                                                  child: Text(
                                                    'Main Features',
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(decoration: TextDecoration.none, fontSize: 18, color: const Color(0xff4f4f4f), fontFamily: 'Montserrat-Bold', fontWeight: FontWeight.normal),
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
                        const SizedBox(height: 12),
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
                                            height: 390,
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
                                                              padding: const EdgeInsets.only(left: 7.98138427734375, top: 0, right: 7.98138427734375, bottom: 0),
                                                              child: Column(
                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                mainAxisSize: MainAxisSize.max,
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
                                                                                      height: 180,
                                                                                      child: Padding(
                                                                                        padding: const EdgeInsets.only(left: 0.00006103515625, top: 0, right: 0, bottom: 0),
                                                                                        child: Row(
                                                                                          mainAxisAlignment: MainAxisAlignment.start,
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
                                                                                                      child: Stack(
                                                                                                        children: [
                                                                                                          Positioned(
                                                                                                              
                                                                                                              child: Image.asset('images/image1_114355.png'),
                                                                                                            
                                                                                                          
                                                                                                            left: 0,
                                                                                                            right: 20,
                                                                                                            top: 0,
                                                                                                            bottom: 0,

                                                                                                          ),
                                                                                                          Positioned(
                                                                                                            left: 0,
                                                                                                            right: 0,
                                                                                                            bottom: 17,
                                                                                                            height: 30,
                                                                                                            child: Stack(
                                                                                                              children: [
                                                                                                                Positioned(
                                                                                                                  left: 15,
                                                                                                                  right: 25,
                                                                                                                  bottom: 0,
                                                                                                                  height: 30,
                                                                                                                  child: ElevatedButton(
                                                                                                                    onPressed: () {
                                                                                                                      Navigator.push(
                                                                                                                        context,
                                                                                                                        MaterialPageRoute(builder: (context) => SmartPage2()),
                                                                                                                      );
                                                                                                                    },
                                                                                                                    style: ElevatedButton.styleFrom(
                                                                                                                      padding: EdgeInsets.zero,
                                                                                                                      shape: RoundedRectangleBorder(
                                                                                                                        borderRadius: BorderRadius.circular(8), // Adjust border radius as needed
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                    child: Stack(
                                                                                                                      children: [
                                                                                                                        Positioned.fill(
                                                                                                                          child: Image.asset('images/image1_114381.png'),
                                                                                                                        ),
                                                                                                                        Positioned(
                                                                                                                          right: 7,
                                                                                                                          width: 24,
                                                                                                                          top: 6,
                                                                                                                          height: 18,
                                                                                                                          child: Image.asset(
                                                                                                                            'images/image2_114528.png',
                                                                                                                            width: 24,
                                                                                                                            height: 18,
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                        Positioned(
                                                                                                                          left: 5,
                                                                                                                          right: 35,
                                                                                                                          top: 6,
                                                                                                                          bottom: 9,
                                                                                                                          child: Center(
                                                                                                                            child: Text(
                                                                                                                              'Read More',
                                                                                                                              textAlign: TextAlign.center,
                                                                                                                              style: TextStyle(
                                                                                                                                decoration: TextDecoration.none,
                                                                                                                                fontSize: 14,
                                                                                                                                color: const Color(0xffffffff),
                                                                                                                                fontFamily: 'PTSans-Bold',
                                                                                                                                fontWeight: FontWeight.normal,
                                                                                                                              ),
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
                                                                                                          Positioned(
                                                                                                            left: 0,
                                                                                                            right: 19.008999999999986,
                                                                                                            top: 82,
                                                                                                            height: 18,
                                                                                                            child: Text(
                                                                                                              'Dashboard',
                                                                                                              textAlign: TextAlign.center,
                                                                                                              style: TextStyle(decoration: TextDecoration.none, fontSize: 18, color: const Color(0xff34a853), fontFamily: 'PTSans-Bold', fontWeight: FontWeight.normal),
                                                                                                              maxLines: 9999,
                                                                                                              overflow: TextOverflow.ellipsis,
                                                                                                            ),
                                                                                                          ),
                                                                                                          Positioned(
                                                                                                            left: 66.019,
                                                                                                            width: 45.62,
                                                                                                            top: 25,
                                                                                                            height: 41,
                                                                                                            child: Image.asset('images/dash.png', width: 45.62, height: 41,), //'images/image2_114525.png'
                                                                                                          ),
                                                                                                        ],
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                            const SizedBox(width: 10),
                                                                                            Column(
                                                                                              children: [
                                                                                                Expanded(
                                                                                                  child: Column(
                                                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                                                    children: [
                                                                                                      Expanded(
                                                                                                        child: Column(
                                                                                                          children: [
                                                                                                            Expanded(
                                                                                                              child: Container(
                                                                                                                width: 174.009,
                                                                                                                child: Stack(
                                                                                                                  children: [
                                                                                                                    Positioned(
                                                                                                                      left: 0,
                                                                                                                      right: 0,
                                                                                                                      top: 0,
                                                                                                                      bottom: 0,
                                                                                                                      child: Image.asset('images/image1_114379.png',),
                                                                                                                    ),
                                                                                                                    Positioned(
                                                                                                                      left: 9,
                                                                                                                      right: 9.008999999999986,
                                                                                                                      bottom: 17,
                                                                                                                      height: 30,
                                                                                                                      child: Stack(
                                                                                                                        children: [
                                                                                                                          ElevatedButton(
                                                                                                                              onPressed: () {
                                                                                                                                Navigator.push(
                                                                                                                                  context,
                                                                                                                                  MaterialPageRoute(builder: (context) => SmartPage4()),
                                                                                                                                );
                                                                                                                              },
                                                                                                                              style: ElevatedButton.styleFrom(
                                                                                                                                padding: EdgeInsets.zero,
                                                                                                                                shape: RoundedRectangleBorder(
                                                                                                                                  borderRadius: BorderRadius.circular(8), // Adjust border radius as needed
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                              child: Stack(
                                                                                                                                children: [
                                                                                                                                  Positioned(
                                                                                                                                    left: 0,
                                                                                                                                    right: 0,
                                                                                                                                    top: 0,
                                                                                                                                    bottom: 0,
                                                                                                                                    child: Image.asset('images/image1_114381.png'),
                                                                                                                                  ),
                                                                                                                                  Positioned(
                                                                                                                                    right: 7,
                                                                                                                                    width: 24,
                                                                                                                                    top: 6,
                                                                                                                                    height: 18,
                                                                                                                                    child: Image.asset(
                                                                                                                                      'images/image2_114528.png',
                                                                                                                                      width: 24,
                                                                                                                                      height: 18,
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                  Positioned(
                                                                                                                                    left: 5,
                                                                                                                                    width: 110,
                                                                                                                                    top: 6,
                                                                                                                                    bottom: 9,
                                                                                                                                    child: Text(
                                                                                                                                      'Read More',
                                                                                                                                      textAlign: TextAlign.center,
                                                                                                                                      style: TextStyle(
                                                                                                                                        decoration: TextDecoration.none,
                                                                                                                                        fontSize: 14,
                                                                                                                                        color: const Color(0xffffffff),
                                                                                                                                        fontFamily: 'PTSans-Bold',
                                                                                                                                        fontWeight: FontWeight.normal,
                                                                                                                                      ),
                                                                                                                                      maxLines: 9999,
                                                                                                                                      overflow: TextOverflow.ellipsis,
                                                                                                                                    ),
                                                                                                                                  ),
                                                                                                                                ],
                                                                                                                              ),
                                                                                                                            ),
                                                                                                                        ]
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                    Positioned(
                                                                                                                      left: 12.991,
                                                                                                                      right: 12.017999999999972,
                                                                                                                      top: 83,
                                                                                                                      height: 18,
                                                                                                                      child: Text(
                                                                                                                        'Recommendation',
                                                                                                                        textAlign: TextAlign.center,
                                                                                                                        style: TextStyle(decoration: TextDecoration.none, fontSize: 18, color: const Color(0xff34a853), fontFamily: 'PTSans-Bold', fontWeight: FontWeight.normal),
                                                                                                                        maxLines: 9999,
                                                                                                                        overflow: TextOverflow.ellipsis,
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                    Positioned(
                                                                                                                      left: 64,
                                                                                                                      width: 45.62,
                                                                                                                      top: 25,
                                                                                                                      height: 41,
                                                                                                                      child: Image.asset('images/image2_114529.png', width: 45.62, height: 41,),
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
                                                                    ],
                                                                  ),
                                                                  const SizedBox(height: 30),
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
                                                                                      height: 180,
                                                                                      child: Stack(
                                                                                        children: [
                                                                                          Positioned(
                                                                                            left: 0,
                                                                                            width: 174.028,
                                                                                            top: 0,
                                                                                            bottom: 0,
                                                                                            child: Image.asset('images/image1_114403.png', width: 174.028,),
                                                                                          ),
                                                                                           Positioned(
                                                                                             left: 0,
                                                                                             right:190,
                                                                                             bottom: 17,
                                                                                             height: 30,
                                                                                             child: Stack(
                                                                                               children: [
                                                                                                 Positioned(
                                                                                                   left: 15,
                                                                                                   right: 25,
                                                                                                   bottom: 0,
                                                                                                   height: 30,
                                                                                                   child: ElevatedButton(
                                                                                                     onPressed: () {
                                                                                                       Navigator.push(
                                                                                                         context,
                                                                                                         MaterialPageRoute(builder: (context) => SmartPage5()),
                                                                                                       );
                                                                                                     },
                                                                                                     onLongPress: () {
                                                                                                       // Add long press functionality here
                                                                                                     },
                                                                                                     style: ElevatedButton.styleFrom(
                                                                                                       padding: EdgeInsets.zero,
                                                                                                       shape: RoundedRectangleBorder(
                                                                                                         borderRadius: BorderRadius.circular(8), // Adjust border radius as needed
                                                                                                       ),
                                                                                                       elevation: 0, // Adjust elevation as needed
                                                                                                       shadowColor: Colors.transparent, // Ensure no shadow
                                                                                                       primary: Colors.transparent, // Ensure transparent background
                                                                                                       // Add more styles as needed
                                                                                                     ),
                                                                                                     child: Stack(
                                                                                                       children: [
                                                                                                         Positioned.fill(
                                                                                                           child: Image.asset('images/image1_114381.png'),
                                                                                                         ),
                                                                                                         Positioned(
                                                                                                           right: 7,
                                                                                                           width: 24,
                                                                                                           top: 6,
                                                                                                           height: 18,
                                                                                                           child: Image.asset(
                                                                                                             'images/image2_114528.png',
                                                                                                             width: 24,
                                                                                                             height: 18,
                                                                                                           ),
                                                                                                         ),
                                                                                                         Positioned(
                                                                                                           left: 5,
                                                                                                           right: 35,
                                                                                                           top: 6,
                                                                                                           bottom: 9,
                                                                                                           child: Center(
                                                                                                             child: Text(
                                                                                                               'Read More',
                                                                                                               textAlign: TextAlign.center,
                                                                                                               style: TextStyle(
                                                                                                                 decoration: TextDecoration.none,
                                                                                                                 fontSize: 14,
                                                                                                                 color: const Color(0xffffffff),
                                                                                                                 fontFamily: 'PTSans-Bold',
                                                                                                                 fontWeight: FontWeight.normal,
                                                                                                               ),
                                                                                                               maxLines: 1, // Adjust as needed
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
                                                                                           
                                                                                          Positioned(
                                                                                            left: 0,
                                                                                            width: 175,
                                                                                            top: 82,
                                                                                            height: 18,
                                                                                            child: Text(
                                                                                              'History',
                                                                                              textAlign: TextAlign.center,
                                                                                              style: TextStyle(decoration: TextDecoration.none, fontSize: 18, color: const Color(0xff34a853), fontFamily: 'PTSans-Bold', fontWeight: FontWeight.normal),
                                                                                              maxLines: 9999,
                                                                                              overflow: TextOverflow.ellipsis,
                                                                                            ),
                                                                                          ),
                                                                                          Positioned(
                                                                                            left: 67.019,
                                                                                            width: 41,
                                                                                            top: 33,
                                                                                            height: 41,
                                                                                            child: Image.asset('images/image2_114531.png', width: 41, height: 41,),
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
              ],
            ),
            const SizedBox(height: 26),
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
                                height: 64,
                                decoration: BoxDecoration(
                                  color: const Color(0xffffffff),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
  left: 47.667,
  width: 15.889,
  top: 22,
  height: 18,
  child: ElevatedButton(
              onPressed: () {
                _sendDataToArduino('A');
              },
              child: Text('Send Data A to Arduino'),
            ),
),

                                    Stack(
  children: [
    
    Positioned(
      left: 369.423,
      width: 35.889,
      top: 19,
      height: 26,
      child: Align(
        alignment: Alignment.center,
        child: Material(
          child: PopupMenuButton(
            itemBuilder: (BuildContext context) => [
              PopupMenuItem(
                child: Text('Bluetooth'),
                value: 'Bluetooth',
              ),
              PopupMenuItem(
                child: Text('Connect'),
                value: 'Connect',
              ),
            ],
            onSelected: (value) {
              // Handle option selection here
              switch (value) {
                case 'Bluetooth':
                  // Do something for option 1
                  break;
                case 'Connect':
                  // Do something for option 2
                  break;
              }
            },
            child: Icon(Icons.settings, color: Color(0xff34a853)), // Use settings icon
          ),
        ),
      ),
    ),
  ],
),
                                    Positioned(
                                      left: 206.559,
                                      width: 19.861,
                                      top: 23,
                                      height: 20,
                                      child: Image.asset('images/image3_114419.png', width: 19.861, height: 20,),
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
    );
  }
}
