import 'package:flutter/material.dart';
import 'package:flutter_bloc/model/pessoa_model.dart';

class Thumb extends StatefulWidget {

  PessoaModel pessoa;
  Thumb({this.pessoa});

  @override
  _ThumbState createState() => _ThumbState();

}

class _ThumbState extends State<Thumb> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(widget.pessoa.nome),
    );
  }
}
