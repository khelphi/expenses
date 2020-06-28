import 'package:flutter/material.dart';

class CardNewTransaction extends StatelessWidget {
  //final Transaction tr;

  //const CardNewTransaction(this.tr);

  @override
  Widget build(BuildContext context) {
    return Card(                                                       // Criamos um novo card
      elevation: 5,                                                    // demos uma elevação, efeito 3d 
      child: Padding(                                                  // envolvemos uma coluna com padding de todos os lados 
        padding: const EdgeInsets.all(10),                             
        child: Column(                                                 // criamos uma coluna com 
          children: <Widget>[                                          // un filho Widget
            TextField(                                                 // com um campo de Título
              decoration: InputDecoration(labelText: 'Título'),        // um label 
            ), 
            TextField(                                                 // outro campo  de Valor
              decoration: InputDecoration(labelText: 'Valor (R\$)'),   // um ladel
            ),
            Row(                                                       // adicionamos uma linha
              mainAxisAlignment: MainAxisAlignment.end,                // alinhada ao final
              children: <Widget>[                                      // com um Widget
                FlatButton(                                            // um botão
                  child: Text('Nova Transação'),                       // um filho de text "Nova Transação"
                  textColor: Colors.purple,                            // cor roxo
                  onPressed: () {},                                    // função do botão 
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
