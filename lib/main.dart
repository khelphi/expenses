import 'package:expenses/components/homepage/homepage.dart';
import 'package:flutter/material.dart';

main() => runApp(ExpensesApp());

// Componente ExpensesApp
class ExpensesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

