import 'package:expenses/components/transaction/transaction-user.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(                                                  // Barra principal
        title: Text('Despesas Pessoais'),                              // Titulo da barra 
      ),
      body: SingleChildScrollView(                                     // aplicamos um scroll
              child: Column(                                                    // Corpo
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
                       TransactionUser(),
                      ]
            
        ),
      )
    );
  }
}
