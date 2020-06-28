
import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';

class CardList extends StatelessWidget {
  final Transaction tr;

  const CardList(this.tr);

  @override
  Widget build(BuildContext context) {
    return Card(                                                               // criamos um card
        child: Row(                                                            // dentro de uma linha
                    children : <Widget>[                                       // com filho do tipo Widgets
                         Container(                                            // dentro de um container
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
                                               tr.value.toString(),                             // demonstrando o valor
                                               style: TextStyle(                                // definindo o estilo e fonte do texto      
                                                                fontWeight:  FontWeight.bold,
                                                                fontSize: 20,
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
                                                     tr.date.toString(),
                                                     style: TextStyle(                                // definindo o estilo e fonte do texto      
                                                                fontWeight:  FontWeight.bold,
                                                                fontSize: 16,                         // tamanho da fonte
                                                                color: Colors.grey[600]               // cor da fonte
                                                               ),
                                                     ),
                                                   ],
                          )
                        ],
                  ));
  }
}
