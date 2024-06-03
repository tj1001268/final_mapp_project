import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mapp/base/style/text_styles.dart';
import 'package:flutter_mapp/domain/landing/summary_model.dart';
import 'package:flutter_mapp/domain/landing/summary_repo.dart';

class SummaryHome extends StatefulWidget {
  @override
  State<SummaryHome> createState() => _SummaryHomeState();
}

class _SummaryHomeState extends State<SummaryHome> {
  SummaryModel summary = SummaryModel();

  @override
  void initState() {
    loadData();
  }

  Future<void> loadData() async {
    SummaryModel res = await loadSummaryData();
    setState(() {
      summary = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // color:Colors.blueAccent,
      height: 220,
      child: Stack(
        children: [
          Container(
            height: 120,
            color:Color(0xFFEA6C43), // Background color set to #EA6C43
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.all(16),
              // color: Colors.blue,
              margin: EdgeInsets.only(bottom: 16),
             decoration: BoxDecoration(
              // color: Colors.white,
              border: Border(
                top: BorderSide(color: Colors.white70, width: 1), // Top border
                // bottom: BorderSide(color: Colors.black, width: 2), // Bottom border
              ),
              borderRadius: BorderRadius.circular(2), // Optional: Add rounded corners
            ),
              child: Column(
                children: [
                  Container(
                    // width: 200,
                    padding: EdgeInsets.all(8),
                    // height: 120,
                    // color: Colors.white,
                    margin: EdgeInsets.only(bottom: 16),
                    child: Column(
                      children: [
                        Text(
                          'Current Balance',
                          style: TypoStyles().kPageHeader,
                        ),
                        Text(
                        'Nu.${summary.openingBalance.toString()}', // Display opening balance
                          style: TypoStyles().kSectionHeader,
                        ),
                        // Container(color: Colors.red, height: 50),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    margin: EdgeInsets.only(bottom: 16),
                    padding: EdgeInsets.all(8),
              
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              border:Border.all(color:Colors.greenAccent),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 60,
                                  child: const Center(
                                    child: Icon(
                                      Icons.arrow_downward,
                                      size: 36,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Total Expense',
                                          style: TypoStyles().kPageHeader
                                        ),
                                        Text(
                                          'Nu. ${summary.expenses}',
                                          style: TypoStyles().kSectionHeader
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              border:Border.all(color:Colors.greenAccent),
                              borderRadius: BorderRadius.circular(6),
                            ),

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 60,
                                  child: const Center(
                                    child: Icon(
                                      Icons.arrow_downward,
                                      size: 36,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Total Income',
                                          style: TypoStyles().kPageHeader
                                        ),
                                        Text(
                                          'Nu. ${summary.income}',
                                          style: TypoStyles().kSectionHeader
                                        ),
                                      ],
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
          )
        ],
      ),
    );
  }
}
