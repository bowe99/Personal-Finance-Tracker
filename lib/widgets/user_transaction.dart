import 'package:flutter/material.dart';

import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransactions = [
    Transaction(
        id: 't1',
        title: 'New Shoes',
        cost: 69.99,
        dateTransaction: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'New Headphones',
        cost: 13.99,
        dateTransaction: DateTime.now()),
  ];

  void _addNewTransactions(String txTitle, double txCost) {
    final newTx = Transaction(
        title: txTitle,
        cost: txCost,
        dateTransaction: DateTime.now(),
        id: DateTime.now().toString()
        );
    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[NewTransaction(_addNewTransactions), TransactionList(_userTransactions)],
    );
  }
}
