import 'package:flutter/material.dart';
import 'package:flutter_bloc/model/pessoa_model.dart';
import '../widgets/thumb_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  PessoaModel pessoa = new PessoaModel();
  List<PessoaModel> _lista;

  @override
  void initState() {
    super.initState();
    _lista = pessoa.buscarLista;
    //_buscarArquivos();
  }

  _buscarArquivos(){
    _lista = pessoa.buscarLista;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOME"),
      ),
      body: ListView.builder(
              itemCount: _lista.length,
              itemBuilder: (BuildContext context, int index) {
                return _card(_lista[index]);
              },
          ),
    );
  }

  _card(objeto){
    return ListTile(
      leading: Text(objeto.nome),
    );
  }

}
