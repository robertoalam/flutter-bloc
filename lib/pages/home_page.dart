import 'package:flutter/material.dart';
import '../model/meu_bloc.dart';
import '../model/marca_model.dart';
import '../widgets/thumb_grid_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  MeuBlocModel bloc = MeuBlocModel();
  int total = 0;
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
    return StreamBuilder(
        stream: bloc.output,
        builder: (context, snapshot) {
          return Scaffold(
            appBar: AppBar(
              title: Text("HOME - ${bloc.total}"),
            ),
            body: GridView.builder(
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:  3),
              itemCount: _lista.length,
              itemBuilder: (context, index) {
                return ThumbGrid( objeto: _lista[index], bloc: bloc,);
              },
            ),
          );
        },
    );
  }
}
