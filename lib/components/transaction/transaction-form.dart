import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {

  //String _title;
  //String _value;
  final _titleController = TextEditingController();
  final _valueController = TextEditingController();

  //Criamos uma function para que transite as informações oara o TransactionForm
  final void Function(String, double) onSubmit;

  //Construtor de TransactionForm recebendo apenas o retorno da função
  TransactionForm(this.onSubmit);

  @override
  Widget build(BuildContext context) {
    return Card(                                                       // Criamos um novo card
      elevation: 5,                                                    // demos uma elevação, efeito 3d 
      child: Padding(                                                  // envolvemos uma coluna com padding de todos os lados 
        padding: const EdgeInsets.all(10),                             
        child: Column(                                                 // criamos uma coluna com 
          children: <Widget>[                                          // un filho Widget
            TextField(                                                 // com um campo de Título
              //onChanged: (newValue) => _title = newValue,              // obtendo o valor do textbox para uma variável
              controller: _titleController,                            // Obtendo os valores pelo controler do textfield
              decoration: InputDecoration(labelText: 'Título'),        // um label 
            ), 
            TextField(                                                 // outro campo  de Valor
              controller: _valueController,                            // Obtendo os valores pelo controler do textfield
              //onChanged: (newValue) => _value = newValue,              // obtendo o valor do textbox para uma variável
              decoration: InputDecoration(labelText: 'Valor (R\$)'),   // um ladel
            ),
            Row(                                                       // adicionamos uma linha
              mainAxisAlignment: MainAxisAlignment.end,                // alinhada ao final
              children: <Widget>[                                      // com um Widget
                FlatButton(                                            // um botão
                  child: Text('Nova Transação'),                       // um filho de text "Nova Transação"
                  textColor: Colors.purple,                            // cor roxo
                  onPressed: () {
                    //print(_title);
                    //print(_value);
                    
                    final title = _titleController.text;
                    final value = double.tryParse(_valueController.text) ?? 0.00;
                    onSubmit(title, value);
                    //print(_titleController.text);
                    //print(_valueController.text);
                  },                                    // função do botão 
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
