import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_mapp/base/style/text_styles.dart';
import 'package:flutter_mapp/domain/transaction/transaction_model.dart';
import 'package:flutter_mapp/domain/transaction/transaction_repo.dart';


class SummaryTransactions extends StatefulWidget {
  const SummaryTransactions({super.key});

  @override
  State<SummaryTransactions> createState() => _SummaryTransactionsState();
}

class _SummaryTransactionsState extends State<SummaryTransactions> {

 List<TransactionModel> transactions =[];

 @override
 void initState(){
  loadData();
 }

 Future<void> loadData() async {
  List<TransactionModel> res =await loadTransactionData();

  setState(() {
    transactions = res;
  });
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
 }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Recent Transaction',
              style: TypoStyles().kSectionHeader,
              ),
            ),
          Container(
            child: Column(
              children: transactions.map((transaction)=> ListTile(
                  title: Text(transaction.title),
                  subtitle: Text(transaction.note),
                  trailing: Text('Nu. ${transaction.amount}',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: transaction.type == 'EXPENSE' ? Colors.red : Colors.green,
                    ),
                  ),
                  ),
                
                ).toList()
            
            ),
            ),
      ],),
    );
  }
}

