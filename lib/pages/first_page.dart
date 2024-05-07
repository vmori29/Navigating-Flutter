import 'package:flutter/material.dart';
import 'package:navigating/mensagem.dart';
//import 'package:navigating/pages/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Navegar'),
          onPressed: () {
            //Outro jeito de fazer
            //Navigator.of(context).push(
            // MaterialPageRoute(
            //  builder: (context) => const SecondPage(),
            // ),
            //);
            Navigator.of(context).pushNamed(
              '/second',
              arguments: Mensagem('Mensagem de navegação'),
            );
          },
        ),
      ),
    );
  }
}
