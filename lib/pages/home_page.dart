import 'package:flutter/material.dart';
import 'package:flutter_bloc/model/marca_model.dart';
import 'package:flutter_bloc/model/pessoa_model.dart';
import '../widgets/thumb_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

//  PessoaModel pessoa = new PessoaModel();
//  List<PessoaModel> _lista;
  MarcaModel marca = new MarcaModel();
  List<MarcaModel> _lista;
  @override
  void initState() {
    super.initState();
    _lista = marca.buscarLista;
    //_buscarArquivos();
  }

  _buscarArquivos(){
    _lista = marca.buscarLista;
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
    return Card(
      child: Padding(
        padding: EdgeInsets.all(5),
          child: ListTile(
            title: Text(objeto.nome),
            leading: CircleAvatar(
              radius: 30,
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: FittedBox(
                  child: Image(image: AssetImage("assets/imagens/${objeto.imagem}"),),
                ),
              ),
            ),
            subtitle: Text("US\$ ${objeto.fortuna.toString()} bilhões"),
          ),
      ),

    );
  }

}
