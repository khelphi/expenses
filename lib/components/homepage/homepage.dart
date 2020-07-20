import 'dart:math';

import 'package:expenses/components/chart/chart.dart';
import 'package:expenses/components/transaction/transaction-form.dart';
import 'package:expenses/components/transaction/transaction-list.dart';
import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // var temporaria de lista de transações
  final List<Transaction> transactions = [
    
    Transaction(id: 't1', title: 'Pizza', value: 39.00, date: DateTime.now().subtract(Duration(days:4))),
    Transaction(id: 't2', title: 'Café Dolce Gusto',value: 46.00,date: DateTime.now().subtract(Duration(days:3))),
    Transaction(id: 't3', title: 'Aluguel', value: 1648.80, date: DateTime.now().subtract(Duration(days:2))),
    //Transaction(id: 't4', title: 'Xbox Game Pass', value: 39.90, date: DateTime.now().subtract(Duration(days:33))),
    Transaction(id: 't5', title: 'Loja Dotz', value: 514.00, date: DateTime.now()),
    //Transaction(id: 't6', title: 'Mercado', value: 180.75, date: DateTime.now()),
    
  ];


  List<Transaction> get recentTransactions{
    return transactions.where((tr){
       return tr.date.isAfter(DateTime.now().subtract(
         Duration(days:7),
       ));

    }
    ).toList();
  }

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
    
    // close popup
    Navigator.of(context).pop();
  }  

openTransactionFormModal(BuildContext context,){
  showModalBottomSheet(


/*
                       Column(
                       children: <Widget>[
                         //comunicação direta
                         TransactionList(transactions),
                         //comunicação indireta
                         TransactionForm(addTransaction), 
                       ],
                     ),
*/

    context: context, 
    builder: (ctx){
      return TransactionForm(addTransaction); 
    }
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(                                                  // Barra principal
        title: Text('Despesas Pessoais',
                     style: TextStyle(
                                      fontFamily: 'OpenSans'
                                     ),
        ),                              // Titulo da barra 
        actions: <Widget>[                                             // criando actions para a appbar
                        IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () => openTransactionFormModal(context)
                          ,

                        )

        ],
      ),
      body: SingleChildScrollView(                                     // aplicamos um scroll
              child: Column(                                                    // Corpo
          crossAxisAlignment: CrossAxisAlignment.stretch,                // Definindo os eixos cruzado inicial    
          children: <Widget>[                                            // Widget filho que contem outros containers
                       /*
                       Container(                                        // container
                         width: double.infinity,                         // definindo o tamanho do Contatiner
                            child: Card(                                 // widget child Cards
                            //color: Colors.blue,                          // Cor do Card
                            color: Theme.of(context).primaryColor,
                            child: Text('Grafico'),                      // texto
                            elevation: 5,                                // formato sombreado
                         ),
                       ),
                       */
                      Chart(recentTransactions),
                      TransactionList(transactions),
                      ]
            
        ),
      ),
      floatingActionButton: FloatingActionButton(                // Botão flutuante
        child: Icon(Icons.add),
        onPressed: () => openTransactionFormModal(context),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,   // Posicionamento do botão flutuante centralizado
    );
  }
}
