import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';

import 'card-list.dart';
import 'card-new-transaction.dart';

class MyHomePage extends StatelessWidget {
  
  // var temporaria de lista de transações
  final _transactions =[
    Transaction(
               id: 't1',
               title:'Pizza',
               value: 39.00,
               date: DateTime.now()
     ),
     Transaction(
               id: 't2',
               title:'Café Dolce Gusto',
               value: 46.00,
               date: DateTime.now()
     ),
     Transaction(
               id: 't3',
               title:'Aluguel',
               value: 1648.80,
               date: DateTime.now()
     ),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(                                                  // Barra principal
        title: Text('Despesas Pessoais'),                              // Titulo da barra 
      ),
      body: Column(                                                    // Corpo
        //mainAxisAlignment: MainAxisAlignment.spaceAround,              // Definindo os eixos principal inicial 
        crossAxisAlignment: CrossAxisAlignment.stretch,                // Definindo os eixos cruzado inicial    
        children: <Widget>[                                            // Widget filho que contem outros containers
                           Container(                                  // container
                             width: double.infinity,                   // definindo o tamanho do Contatiner
                                child: Card(                           // widget child Cards
                                color: Colors.blue,                    // Cor do Card
                                child: Text('Grafico'),                // texto
                                elevation: 5,                          // formato sombreado
                             ),
                           ),
                           Column(                                     // Criamos um acoluna que tem um filho 
                             children: _transactions.map((tr){         // recebendo um mapeamento da lista de transações
                               return CardList(tr);
                             }).toList(),                              // convertemos o mapeamento para uma lista
                           ),
                            CardNewTransaction(),
                            /*
                            Card(
                              elevation: 5,
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  children: <Widget>[
                                    TextField(
                                      decoration: InputDecoration(
                                        labelText: 'Título'
                                      ),
                                    ),
                                    TextField(
                                                decoration: InputDecoration(
                                                                             labelText: 'Valor (R\$)',
                                                                           ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        FlatButton(
                                                   child: Text('Nova Transação'),
                                                   textColor: Colors.purple,
                                                   onPressed: (){},
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                            */  
                          ]
        
      )
    );
  }
}
