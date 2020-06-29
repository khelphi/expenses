import 'package:expenses/components/transaction/transaction-list.dart';
import 'package:expenses/components/transaction/transaction-form.dart';
import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';

class TransactionUser extends StatefulWidget {
  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  // var temporaria de lista de transações
  final _transactions = [
    Transaction(id: 't1', title: 'Pizza', value: 39.00, date: DateTime.now()),
    Transaction(id: 't2',title: 'Café Dolce Gusto',value: 46.00,date: DateTime.now()),
    Transaction(id: 't3', title: 'Aluguel', value: 1648.80, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionList(_transactions),
        TransactionForm(),
      ],
    );
  }
}
