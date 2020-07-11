import 'package:flutter/material.dart';

import './new_transactions.dart';
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
      title: 'Shoes',
      amount: 60,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Tomatoes',
      amount: 30,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String txTitle, int txAmount) {
    final newTx = Transaction(
      id: DateTime.now().toString(),
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
    );

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          NewTransaction(_addNewTransaction),
          TransactionList(_userTransactions),
        ],
      ),
    );
  }
}
