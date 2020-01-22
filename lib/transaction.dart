import 'package:flutter/foundation.dart';

class Transaction{
  final String title;
  final String id;
  final double cost;
  final DateTime dateTransaction;

  Transaction({
    @required this.title,
    @required this.id, 
    @required this.cost, 
    @required this.dateTransaction
  });
}