import 'package:flutter/material.dart';
import 'imc.dart';
import 'contador.dart';
import 'produto.dart';
import 'principal.dart';
import 'usuario.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Rotas Nomeadas',
        home: Principal(),
        /*initialRoute: '/',
        routes: {
          '/': (context) => Principal(),
          '/imc': (context) => const Imc(),
          '/contador': (context) => const Contador(),
          '/usuario': (context) => const Usuario(),
          '/produto': (context) => const Produto(),
        }*/
    );
  }
}