import 'dart:math';

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
  final transactions = [
    Transaction(id: 't1', title: 'Pizza', value: 39.00, date: DateTime.now()),
    Transaction(id: 't2', title: 'Café Dolce Gusto',value: 46.00,date: DateTime.now()),
    Transaction(id: 't3', title: 'Aluguel', value: 1648.80, date: DateTime.now()),
    Transaction(id: 't4', title: 'Xbox Game Pass', value: 39.90, date: DateTime.now()),
    Transaction(id: 't5', title: 'Loja Dotz', value: 514.00, date: DateTime.now()),
    Transaction(id: 't6', title: 'Mercado', value: 180.75, date: DateTime.now()),
  ];

  // Metodo responsável por adicionar itens na lista
  addTransaction(String _title, double _value){
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: _title,
      value: _value,
      date: DateTime.now()
    );
    
    // Atualizando o stado do Stateless
    setState(() {
      transactions.add(newTransaction);
    });
  }

  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        //comunicação direta
        TransactionList(transactions),
        //comunicação indireta
        TransactionForm(addTransaction),
      ],
    );
  }
}
