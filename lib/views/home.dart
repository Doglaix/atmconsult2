import 'package:atm/views/cliente.dart';
import 'package:atm/views/contato.dart';
import 'package:atm/views/servico.dart';
import 'package:flutter/material.dart';

import 'empresa.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void _abrirEmpresa(){
    Navigator.push(
      context, MaterialPageRoute(
        builder: (context)=>Empresa()
      ));
      }
  void _abrirContato(){
    Navigator.push(
      context, MaterialPageRoute(
        builder: (context)=>Contato()
      ));
      }
  void _abrirCliente(){
    Navigator.push(
      context, MaterialPageRoute(
        builder: (context)=>Cliente()
      ));
      }
  void _abrirServico(){
    Navigator.push(
      context, MaterialPageRoute(
        builder: (context)=>Servico()
      ));
      }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Consultoria ATM"),
      backgroundColor: Color.fromARGB(255, 0, 125, 130),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(children: [
          Image.asset("imagens/logo.png"),
          const SizedBox(
            height: 34,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              GestureDetector(
                 onTap: _abrirEmpresa,
          child: Image.asset("imagens/menu_empresa.png"),
              ),
              SizedBox(
                width: 30,
              ),
              GestureDetector(
                 onTap: _abrirServico,
          child: Image.asset("imagens/menu_servico.png"),
              ),            ],
           ),
           SizedBox(
                height: 30,
              ),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              GestureDetector(
                 onTap: _abrirCliente,
          child: Image.asset("imagens/menu_cliente.png"),
              ),
              SizedBox(
                width: 30,
              ),
              GestureDetector(
                onTap: _abrirContato,
          child: Image.asset("imagens/menu_contato.png"),
              ),            ],
           ),
          ],
        ),
      ),

    );
    
  }
}