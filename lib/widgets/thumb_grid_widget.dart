import 'package:flutter/material.dart';
import 'package:flutter_bloc/model/marca_model.dart';
import 'package:flutter_bloc/model/meu_bloc.dart';


class ThumbGrid extends StatefulWidget {

  MarcaModel objeto;
  MeuBlocModel bloc = MeuBlocModel();
  ThumbGrid({this.objeto , this.bloc});

  @override
  _ThumbGridState createState() => _ThumbGridState();
}

class _ThumbGridState extends State<ThumbGrid> {

  bool _selecionado = false;


  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.all(7),
        child: Container(
          decoration: new BoxDecoration(
            color: ( _selecionado ) ? Colors.green : Colors.white ,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 30,
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: FittedBox(
                  //   fit: BoxFit.scaleDown,
                    child: Image(
                      image: AssetImage("assets/imagens/${widget.objeto.imagem}"),
                      height: 50,
                      width: 50,
                    ),
                  ),
                ),
              ),
              Text("US\$ ${widget.objeto.fortuna.toString()} bilhões" , overflow: TextOverflow.ellipsis,),
            ],
          ),
        ),
      ),
      onLongPressUp: () { _inverter(); },
      onTap: () { _inverter(); },
    );
  }

  _inverter(){

    setState(() {
      _selecionado = !_selecionado;
    });
    widget.bloc.contador(_selecionado);
  }
}
