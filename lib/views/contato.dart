import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Contato extends StatefulWidget {
  const Contato({super.key});

  @override
  State<Contato> createState() => _ContatoState();
}

class _ContatoState extends State<Contato> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(title: Text("Contato"),
      backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
       child: Container(
         padding: EdgeInsets.all(30),
         child: Column(
        children: [
          Row(
            children: [
              Image.asset("imagens/detalhe_contato.png"),
              const Text("Sobre o contato da empresa", 
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 97, 189, 140)
                ),
              )
            ],
          ),
          const Text(
         "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum."
          "Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus."
          "Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing.",
          textAlign: TextAlign.justify),
        ], 
      ),
       )
      ),
    );
  }
}