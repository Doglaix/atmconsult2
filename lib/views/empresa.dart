import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Empresa extends StatefulWidget {
  const Empresa({super.key});

  @override
  State<Empresa> createState() => _EmpresaState();
}

class _EmpresaState extends State<Empresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Empresa"),
      backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
       child: Container(
         padding: EdgeInsets.all(30),
         child: Column(
        children: [
          Row(
            children: [
              Image.asset("imagens/detalhe_empresa.png"),
              const Text("Sobre a empresa", 
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.deepOrange
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