import 'package:flutter/material.dart';

class GroupCell1Item extends StatefulWidget {
  final GroupCell1Model model;

  const GroupCell1Item({super.key, required this.model});

  @override
  State<StatefulWidget> createState() => _GroupCell1Item();
}

class _GroupCell1Item extends State<GroupCell1Item> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
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
                          height: 111,
                          decoration: BoxDecoration(
                            color: const Color(0xffffffff),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 3),
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
                                            padding: const EdgeInsets.only(left: 6, top: 0, right: 6, bottom: 0),
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
                                                        mainAxisSize: MainAxisSize.min,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              child: Text(
                                                                widget.model.textOverallStatus,
                                                                textAlign: TextAlign.left,
                                                                style: TextStyle(decoration: TextDecoration.none, fontSize: 11, color: const Color(0xff121212), fontFamily: 'Poppins-SemiBold', fontWeight: FontWeight.normal),
                                                                maxLines: 9999,
                                                                overflow: TextOverflow.ellipsis,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(height: 5),
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        mainAxisSize: MainAxisSize.min,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              child: Text(
                                                                widget.model.customTextLabel,
                                                                textAlign: TextAlign.left,
                                                                style: TextStyle(decoration: TextDecoration.none, fontSize: 11, color: const Color(0xffa9a9a9), fontFamily: 'Poppins-Regular', fontWeight: FontWeight.normal),
                                                                maxLines: 9999,
                                                                overflow: TextOverflow.ellipsis,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                const SizedBox(height: 5),
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
                                                                    height: 20,
                                                                    child: Padding(
                                                                      padding: const EdgeInsets.only(left: 3, top: 0, right: 0, bottom: 0),
                                                                      child: Row(
                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                        mainAxisSize: MainAxisSize.max,
                                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                                        children: [
                                                                          Column(
                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                            children: [
                                                                              SizedBox(
                                                                                width: 91,
                                                                                child: Text(
                                                                                  widget.model.customTextLabel1,
                                                                                  textAlign: TextAlign.left,
                                                                                  style: TextStyle(decoration: TextDecoration.none, fontSize: 7, color: const Color(0xffa5acb8), fontFamily: 'Inter-Medium', fontWeight: FontWeight.normal),
                                                                                  maxLines: 9999,
                                                                                  overflow: TextOverflow.ellipsis,
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          const SizedBox(width: 10),
                                                                          Expanded(
                                                                            child: Column(
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Container(
                                                                                  width: double.infinity,
                                                                                  child: Text(
                                                                                    widget.model.customTextLabel2,
                                                                                    textAlign: TextAlign.left,
                                                                                    style: TextStyle(decoration: TextDecoration.none, fontSize: 7, color: const Color(0xffa5acb8), fontFamily: 'Inter-Medium', fontWeight: FontWeight.normal),
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
    );
  }
}

class GroupCell1Model {
  int section;
  String cellType;
  String textOverallStatus;
  String customTextLabel;
  String customTextLabel1;
  String customTextLabel2;

  GroupCell1Model({
    this.section = 0,
    this.cellType = '',
    this.textOverallStatus = '',
    this.customTextLabel = '',
    this.customTextLabel1 = '',
    this.customTextLabel2 = ''
  });
}
