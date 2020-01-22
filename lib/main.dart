import 'package:flutter/material.dart';

import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(id: 't1', title: 'New Shoes', cost: 69.99, dateTransaction: DateTime.now()),
    Transaction(id: 't2', title: 'New Headphones', cost: 13.99, dateTransaction: DateTime.now()),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.lightBlue,
              child: Text(
                'Chart',
                style: TextStyle(
                  color: Colors.white
                )),
              elevation: 5,
            ),
          ),
          Column(
            children: transactions.map((tx){
              return Card(
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(tx.cost.toString()),
                    ),
                    Column(
                      children: <Widget>[
                        Text(tx.title),
                        Text(tx.dateTransaction.toString())
                      ],
                    )
                  ],
                ),
              );
            }).toList(),
          )
        ],
      )
      );
  }
}

