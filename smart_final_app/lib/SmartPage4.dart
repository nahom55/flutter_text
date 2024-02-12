import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'GroupCell4/group_cell1_item.dart';

class SmartPage4 extends StatefulWidget {
  final group2ModelList = [
    GroupCell1Model(
      section: 0,
      cellType: 'GroupCell1Item',
      textOverallStatus: 'Overall status',
      customTextLabel: 'Lorem Ipsum tempor incididunt ut labore et dolore,in voluptate velit esse cillum Lorem Ipsum tempor incididunt ut labore et dolore,in voluptate velit esse cillum ',
      customTextLabel1: 'Today at 9:42 AM',
      customTextLabel2: 'Addis Abeba',
    ),
    GroupCell1Model(
      section: 0,
      cellType: 'GroupCell1Item',
      textOverallStatus: 'Nitrogen status',
      customTextLabel: 'Lorem Ipsum tempor incididunt ut labore et dolore,in voluptate velit esse cillum Lorem Ipsum tempor incididunt ut labore et dolore,in voluptate velit esse cillum ',
      customTextLabel1: 'Today at 9:42 AM',
      customTextLabel2: 'Addis Abeba',
    ),
    GroupCell1Model(
      section: 0,
      cellType: 'GroupCell1Item',
      textOverallStatus: 'Phosphorous status',
      customTextLabel: 'Lorem Ipsum tempor incididunt ut labore et dolore,in voluptate velit esse cillum Lorem Ipsum tempor incididunt ut labore et dolore,in voluptate velit esse cillum ',
      customTextLabel1: 'Today at 9:42 AM',
      customTextLabel2: 'Addis Abeba',
    ),
    GroupCell1Model(
      section: 0,
      cellType: 'GroupCell1Item',
      textOverallStatus: 'Humidity status',
      customTextLabel: 'Lorem Ipsum tempor incididunt ut labore et dolore,in voluptate velit esse cillum Lorem Ipsum tempor incididunt ut labore et dolore,in voluptate velit esse cillum ',
      customTextLabel1: 'Today at 9:42 AM',
      customTextLabel2: 'Addis Abeba',
    ),
  ];
  SmartPage4({super.key});

  @override
  State<StatefulWidget> createState() => _CodiaPage();
}

class _CodiaPage extends State<SmartPage4> {
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
                  width: 432,
                  height: 932,
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
                                          height: 790,
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
                                                                  height: 115,
                                                                  decoration: BoxDecoration(
                                                                    color: const Color(0xff34a853),
                                                                  ),
                                                                  child: Stack(
                                                                    children: [
                                                                      Positioned(
                                                                        left: 103,
                                                                        right: 102,
                                                                        top: 40,
                                                                        child: Text(
                                                                          'Recommendation',
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
                                                                        child: Image.asset('images/imageVector_2211103.png', width: 18.414, height: 15.414,),
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
                                              const SizedBox(height: 9),
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
                                                                  height: 666,
                                                                  child: Padding(
                                                                    padding: const EdgeInsets.only(left: 14, top: 0, right: 14, bottom: 0),
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
                                                                                            height: 666,
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
                                                                                                                    height: 134,
                                                                                                                    decoration: BoxDecoration(
                                                                                                                      color: const Color(0xffffffff),
                                                                                                                      borderRadius: BorderRadius.circular(10),
                                                                                                                    ),
                                                                                                                    child: Padding(
                                                                                                                      padding: const EdgeInsets.only(left: 0, top: 0, right: 2, bottom: 0),
                                                                                                                      child: Row(
                                                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                                        children: [
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
                                                                                                                                              child: Image.asset('images/image_2211148.png', width: 160, fit: BoxFit.cover,),
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
                                                                                                const SizedBox(height: 10),
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
                                                                                                                    height: 522,
                                                                                                                    child: Padding(
                                                                                                                      padding: const EdgeInsets.only(left: 0.5, top: 0, right: 0.5, bottom: 0),
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
                                                                                                                                              height: 31,
                                                                                                                                              child: Row(
                                                                                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                                                                children: [
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
                                                                                                                                                                      width: 36,
                                                                                                                                                                      decoration: BoxDecoration(
                                                                                                                                                                        color: const Color(0xff34a853),
                                                                                                                                                                      ),
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
                                                                                                                                                                                    'All',
                                                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                                                    style: TextStyle(decoration: TextDecoration.none, fontSize: 11, color: const Color(0xffffffff), fontFamily: 'Poppins-SemiBold', fontWeight: FontWeight.normal),
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
                                                                                                                                                                ],
                                                                                                                                                              ),
                                                                                                                                                            ),
                                                                                                                                                          ],
                                                                                                                                                        ),
                                                                                                                                                      ),
                                                                                                                                                    ],
                                                                                                                                                  ),
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
                                                                                                                                                                      width: 71,
                                                                                                                                                                      decoration: BoxDecoration(
                                                                                                                                                                        color: const Color(0xffffffff),
                                                                                                                                                                        border: Border.all(color: const Color(0xffa9a9a9), width: 1),
                                                                                                                                                                      ),
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
                                                                                                                                                                                    'Nitrogen',
                                                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                                                    style: TextStyle(decoration: TextDecoration.none, fontSize: 11, color: const Color(0xff71b1a1), fontFamily: 'Poppins-SemiBold', fontWeight: FontWeight.normal),
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
                                                                                                                                                                ],
                                                                                                                                                              ),
                                                                                                                                                            ),
                                                                                                                                                          ],
                                                                                                                                                        ),
                                                                                                                                                      ),
                                                                                                                                                    ],
                                                                                                                                                  ),
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
                                                                                                                                                                      width: 89,
                                                                                                                                                                      decoration: BoxDecoration(
                                                                                                                                                                        color: const Color(0xffffffff),
                                                                                                                                                                        border: Border.all(color: const Color(0xffa9a9a9), width: 1),
                                                                                                                                                                      ),
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
                                                                                                                                                                                    'Photassium',
                                                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                                                    style: TextStyle(decoration: TextDecoration.none, fontSize: 11, color: const Color(0xff71b1a1), fontFamily: 'Poppins-SemiBold', fontWeight: FontWeight.normal),
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
                                                                                                                                                                ],
                                                                                                                                                              ),
                                                                                                                                                            ),
                                                                                                                                                          ],
                                                                                                                                                        ),
                                                                                                                                                      ),
                                                                                                                                                    ],
                                                                                                                                                  ),
                                                                                                                                                  Expanded(
                                                                                                                                                    child: Column(
                                                                                                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                                                                      children: [
                                                                                                                                                        Expanded(
                                                                                                                                                          child: Container(
                                                                                                                                                            width: double.infinity,
                                                                                                                                                            decoration: BoxDecoration(
                                                                                                                                                              color: const Color(0xffffffff),
                                                                                                                                                              border: Border.all(color: const Color(0xffa9a9a9), width: 1),
                                                                                                                                                            ),
                                                                                                                                                            child: Row(
                                                                                                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                                                                                                              mainAxisSize: MainAxisSize.max,
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
                                                                                                                                                                          'Phosphorous',
                                                                                                                                                                          textAlign: TextAlign.center,
                                                                                                                                                                          style: TextStyle(decoration: TextDecoration.none, fontSize: 11, color: const Color(0xff71b1a1), fontFamily: 'Poppins-SemiBold', fontWeight: FontWeight.normal),
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
                                                                                                                                                      ],
                                                                                                                                                    ),
                                                                                                                                                  ),
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
                                                                                                                                                                      width: 74,
                                                                                                                                                                      decoration: BoxDecoration(
                                                                                                                                                                        color: const Color(0xffffffff),
                                                                                                                                                                        border: Border.all(color: const Color(0xffa9a9a9), width: 1),
                                                                                                                                                                      ),
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
                                                                                                                                                                                    'Humidity',
                                                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                                                    style: TextStyle(decoration: TextDecoration.none, fontSize: 11, color: const Color(0xff71b1a1), fontFamily: 'Poppins-SemiBold', fontWeight: FontWeight.normal),
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
                                                                                                                                                                ],
                                                                                                                                                              ),
                                                                                                                                                            ),
                                                                                                                                                          ],
                                                                                                                                                        ),
                                                                                                                                                      ),
                                                                                                                                                    ],
                                                                                                                                                  ),
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
                                                                                                                                                                      width: 37,
                                                                                                                                                                      decoration: BoxDecoration(
                                                                                                                                                                        color: const Color(0xffffffff),
                                                                                                                                                                        border: Border.all(color: const Color(0xffa9a9a9), width: 1),
                                                                                                                                                                      ),
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
                                                                                                                                                                                    'PH',
                                                                                                                                                                                    textAlign: TextAlign.center,
                                                                                                                                                                                    style: TextStyle(decoration: TextDecoration.none, fontSize: 11, color: const Color(0xff71b1a1), fontFamily: 'Poppins-SemiBold', fontWeight: FontWeight.normal),
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
                                                                                                                          const SizedBox(height: 17),
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
                                                                                                                                              height: 474,
                                                                                                                                              child: GroupedListView<dynamic, int>(
                                                                                                                                                elements: widget.group2ModelList,
                                                                                                                                                groupBy: (model) => model.section,
                                                                                                                                                groupHeaderBuilder:(model) => Container(),
                                                                                                                                                itemBuilder: (context, model) {
                                                                                                                                                  if (model.cellType == 'GroupCell1Item') {
                                                                                                                                                    return GroupCell1Item(model: model);
                                                                                                                                                  }
                                                                                                                                                  return Container();
                                                                                                                                                },
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
                      const SizedBox(height: 78),
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
                                          child: Image.asset('images/imageGroup_2211330.png', height: 64,),
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
          ],
        ),
      ),
    );
  }
}
