
import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  const TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    
    return Container(                                                  // envolvemos a lista em um container para
      height: 385,                                                     // um tamenho definido por conta de que
      child: transactions.isEmpty ? Column(children:<Widget>[
        SizedBox(height: 20),
        Text('Nenhuma Transação cadastrada...',
        style: Theme.of(context).textTheme.title,
        ),
        SizedBox(height: 20),
        Container(
          height: 150,
          child: Image.asset('assets/images/waiting.png',
          fit: BoxFit.cover,),
        )
      ],) :  
      ListView.builder(                                         // Criamos um ListView que tem um filho 
                 itemCount: transactions.length,                       // definindo o tamanho do list view para
                 itemBuilder: (ctx,index){                             // não carregar tudo de uma vez...
                     final tr = transactions[index];
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
                                                    //color: Theme.of(context).primaryColor,
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
                                                                             //color: Theme.of(context).primaryColor,
                                                                            ),
                                                           )
                                               ),
                                      Column(
                                             crossAxisAlignment: CrossAxisAlignment.start,                         // Alinhando conteudo da columa o inicio direita
                                             children: <Widget>[                                    
                                                                Text(
                                                                  tr.title,
                                                                  style: Theme.of(context).textTheme.title,
                                                                  /*
                                                                  style: TextStyle(                                // definindo o estilo e fonte do texto      
                                                                             fontWeight:  FontWeight.bold,
                                                                             fontSize: 16,                         // tamanho da fonte
                                                                             color: Colors.grey[600]               // cor da fonte
                                                                            ),
                                                                            */
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
                 },
                  ),
    );

    
    

  }
}
