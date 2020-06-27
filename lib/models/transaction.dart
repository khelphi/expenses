
import 'package:flutter/foundation.dart';

/// <summary>
/// Classe para transações
/// </summary>
class Transaction{
      final String id;
      final String title;
      final double value;
      final DateTime date;

      /// <summary>
      /// Construtor
      /// </summary>
      Transaction(
        {
          @required this.id,
          @required this.title,
          @required this.value,
          @required this.date,
        }) ;
}