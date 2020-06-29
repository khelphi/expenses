
import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> _transactions;

  const TransactionList(this._transactions);

  @override
  Widget build(BuildContext context) {
    
    return Column(                                     // Criamos um acoluna que tem um filho 
                   children: _transactions.map((tr){         // recebendo um mapeamento da lista de transações
                    return Card(                                                              // criamos um card
                       child: Row(                                                            // dentro de uma linha
                                   children : <Widget>[                                       // com filho do tipo Widgets
                                        Container(                                            // dentro de um container
                                                  width: 100,                                 // tamanho fixo
                                                  margin:EdgeInsets.symmetric(                // definimos uma margin                              
                                                    horizontal: 15,                           // com valores tanto Horizontal
                                                    vertical: 10                              // quando Vertical 
                                                  ),
                                                  decoration: BoxDecoration(                  // estilos de layout
                                                    border: Border.all(                       // Borda para todos os lados
                                                      color: Colors.purple[50],               // na cor roxo com um valor de tonalidade[50]
                                                      width: 2,                               // com o width de 2
                                                    )
                                                  ),
                                                  padding: EdgeInsets.all(10),                // definindo um espaço de 10 para todos os lados
                                                  child: Text(
                                                              'R\$ ${tr.value.toStringAsFixed(2)}',
                                                              //tr.value.toString(),                             // demonstrando o valor
                                                              style: TextStyle(                                // definindo o estilo e fonte do texto      
                                                                               fontWeight:  FontWeight.bold,
                                                                               fontSize: 14,
                                                                               color: Colors.purple
                                                                              ),
                                                             )
                                                 ),
                                        Column(
                                               crossAxisAlignment: CrossAxisAlignment.start,                         // Alinhando conteudo da columa o inicio direita
                                               children: <Widget>[                                    
                                                                  Text(
                                                                    tr.title,
                                                                    style: TextStyle(                                // definindo o estilo e fonte do texto      
                                                                               fontWeight:  FontWeight.bold,
                                                                               fontSize: 16,                         // tamanho da fonte
                                                                               color: Colors.grey[600]               // cor da fonte
                                                                              ),
                                                                    ), 
                                                                  Text(
                                                                    DateFormat('d MMM y').format(tr.date),
                                                                    style: TextStyle(                                // definindo o estilo e fonte do texto      
                                                                               fontWeight:  FontWeight.bold,
                                                                               fontSize: 12,                         // tamanho da fonte
                                                                               color: Colors.grey[600]               // cor da fonte
                                                                              ),
                                                                    ),
                                                                  ],
                                         )
                                       ],
                                 ));
                     }).toList(),                              // convertemos o mapeamento para uma lista
                    );

    
    

  }
}
