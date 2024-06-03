import 'package:flutter/material.dart';
import 'package:flutter_mapp/base/style/text_styles.dart';
import 'package:flutter_mapp/domain/account/account_model.dart';
import 'package:flutter_mapp/domain/account/account_repo.dart';

class AccountCard extends StatelessWidget {

  AccountModel account;

  AccountCard(this.account);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 300,
      // color: Colors.blueAccent,
      margin: EdgeInsets.only(left: 16),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border:Border.all(color:Colors.greenAccent),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              height: 30,
              padding: EdgeInsets.all(6),
              margin: EdgeInsets.only(bottom: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('${account.title}', style: TypoStyles().kSectionHeader,),
                  CircleAvatar(
                  backgroundImage: NetworkImage("${account.img}"),
                  )
                ],
              ),
            ),
          ),
          Container(
            // color:Colors.white,
            margin: EdgeInsets.only(bottom: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nu. ${account.openingBalance}',
                  style: TypoStyles().kPageHeader,
                ),
                Text(
                  'Balance',
                  style: TypoStyles().kSectionHeader,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
