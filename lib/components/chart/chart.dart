import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'chart_bar.dart';


// Componente Chart para demonstrar os ultimos dias
class Chart extends StatelessWidget {

final List<Transaction> recentTransactions;


Chart(this.recentTransactions);

String daysTranslate(int par) {
    
    switch (par) {
          case 1:
            return "seg";
          case 2:
            return "ter";
          case 3:
            return "qua"; 
          case 4:
            return "qui";
          case 5:
            return "sex";
          case 6:
            return "sab";
          case 7:
            return "dom";
        }
    return '';
  }

List<Map<String, Object>> get groupedTransactions {
   return List.generate(7, (index) {
      
      
      
      // dias da semana
      final weekDay = DateTime.now().subtract(
        Duration(days:index),
      );

      String dayLetter = DateFormat.E().format(weekDay)[0];
      String dayLetterBr = DateFormat.E('pt_BR').format(weekDay)[0];

      //String dayLetterBr = daysTranslate(index);


      double totalSum = 0.0;

      /*
      recentTransactions.forEach((Transaction tr) { 
        bool samDay = tr.date.day == weekDay.day;
        bool samMonth = tr.date.month == weekDay.month;
        bool samYear = tr.date.year == weekDay.year;

        if (samDay && samMonth && samYear)
        totalSum += tr.value;
      });
      */

      
      for (var i = 0; i < recentTransactions.length; i++)
      {
        bool samDay = recentTransactions[i].date.day == weekDay.day;
        bool samMonth = recentTransactions[i].date.month == weekDay.month;
        bool samYear = recentTransactions[i].date.year == weekDay.year;

        if (samDay && samMonth && samYear)
        totalSum += recentTransactions[i].value;
      }
      

      return {
              'day': dayLetter+'-'+dayLetterBr,
              'value': totalSum};
             }

     );
     
}

@override
Widget build(BuildContext context) { 
  groupedTransactions;
   return Card(
              elevation: 6,
              margin: EdgeInsets.all(20),
              child: Row(
                           children: groupedTransactions.map((tr) {
                             return ChartBar(
                               label: tr['day'],
                               value: tr['value'],
                               percentage: 0.5,
                             );
                           }).toList(),
                        ), 
              );

    }
}