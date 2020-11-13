import 'dart:io';

class ItemModel{
  String tipo;
  String nome;
  bool selecionado;

  ItemModel({
    this.tipo,
    this.nome,
    this.selecionado = false,
  });

}