import 'package:expenses/components/homepage/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


main() => runApp(ExpensesApp());

// Componente ExpensesApp
class ExpensesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var copyWith = ThemeData.light().textTheme.copyWith( 
          title: TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
      );
    return MaterialApp(
      
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate 
      ],
      supportedLocales: [const Locale('pt', 'BR')],
      home: MyHomePage(), 
    theme: ThemeData(
      primarySwatch : Colors.red,
      accentColor: Colors.amber,
      fontFamily: 'Quicksand',
      
      // Definindo font proncipal para tudo
      textTheme: copyWith,
      // Definindo font proncipal apenas para a app-bar
      appBarTheme: AppBarTheme(
        textTheme: ThemeData.light().textTheme.copyWith(
          title: TextStyle(
            fontFamily: 'OpenSans',
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      ),
    );
  }
}

