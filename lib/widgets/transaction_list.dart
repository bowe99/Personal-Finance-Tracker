import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemBuilder: (ctx, index){
          return Card(
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                          decoration: BoxDecoration(
                              border: Border.all(
                            color: Colors.lightGreen,
                            width: 2,
                          )),
                          padding: EdgeInsets.all(10),
                          child: Text(
                            '\$${transactions[index].cost.toStringAsFixed(2)}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.lightGreen),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              transactions[index].title,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              DateFormat.yMMMd().format(transactions[index].dateTransaction),
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  );

        },
        itemCount: transactions.length,
    )
  );
  }
}
