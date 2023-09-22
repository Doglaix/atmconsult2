import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Cliente extends StatefulWidget {
  const Cliente({super.key});

  @override
  State<Cliente> createState() => _ClienteState();
}

class _ClienteState extends State<Cliente> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(title: Text("Cliente"),
      backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
       child: Container(
         padding: EdgeInsets.all(30),
         child: Column(
        children: [
          Row(
            children: [
              Image.asset("imagens/detalhe_cliente.png"),
              const Text("Sobre o cliente da empresa", 
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 185, 201, 65)
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