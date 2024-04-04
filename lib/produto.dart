import 'package:flutter/material.dart';

void main() {
  runApp(const Produto());
}

class Produto extends StatelessWidget {
  const Produto({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController usuarioController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  String _textoInfo = "Informe seus dados!";

  void _cadastrarUsuario(){
    setState(() {
      String usuario = usuarioController.text;
      String senha = senhaController.text;

      if(senha.isEmpty){
        _textoInfo = "Informe os dados corretamente!";
      }
      else if(usuario.isEmpty){
        _textoInfo = "Informe os dados corretamente!";
      }
      else{
        setState(() {
          _textoInfo = "Dados cadastrados com sucesso!";
          usuarioController.text ="";
          senhaController.text = "";
        });
      }
    });
  }

  void _limparTela(){
    usuarioController.text = "";
    senhaController.text = "";
    setState((){
      _textoInfo = "";
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de Usuario"),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
        actions: <Widget>[
          IconButton(
              onPressed: _limparTela,
              icon: Icon(Icons.refresh)
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Icon(
              Icons.person,
              size: 125.0,
              color: Colors.purpleAccent,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "Usuario:",
                  labelStyle: TextStyle(color: Colors.purpleAccent)
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: usuarioController,
            ),
            TextField(
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "Senha:",
                  labelStyle: TextStyle(color: Colors.purpleAccent)
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: senhaController,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: SizedBox(
                height: 50.0,
                child: ElevatedButton(
                    onPressed: _cadastrarUsuario,
                    child: const Text("Cadastrar")
                ),
              ),
            ),
            Text(
              _textoInfo,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.purpleAccent,
                  fontSize: 25.0
              ),
            ),
          ],
        ),
      ),
    );
  }
}