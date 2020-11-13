class PessoaModel{

  String nome;
  String imagem;
  int idade;

  PessoaModel({this.nome, this.imagem, this.idade});


  List<PessoaModel> get buscarLista {
    return [
      new PessoaModel(nome:'Roberto' ,idade: 39 , imagem: "beto.jpg") ,
      new PessoaModel(nome:'Tonia Laura' ,idade: 35 , imagem: "tonia.png") ,
      new PessoaModel(nome:'Luisa' ,idade: 13 , imagem: "luisa.png") ,
      new PessoaModel(nome:'Jose' ,idade: 75 , imagem: "ze.png") ,
      new PessoaModel(nome:'Ceceu' ,idade: 36 , imagem: "ceceu.png") ,
      new PessoaModel(nome:'Julia' ,idade: 11 , imagem: "ze.png") ,
      new PessoaModel(nome:'Vagner' ,idade: 38 , imagem: "vagner.png") ,
      new PessoaModel(nome:'Cristina' ,idade: 38 , imagem: "vagner.png") ,
      new PessoaModel(nome:'Luiz Eduardo' ,idade: 37 , imagem: "dudu.png") ,
      new PessoaModel(nome:'Leandro' ,idade: 39 , imagem: "leandro.png") ,
      new PessoaModel(nome:'Maylen' ,idade: 39 , imagem: "leandro.png") ,
      new PessoaModel(nome:'Eduardo' ,idade: 36 , imagem: "xiler.png") ,
      new PessoaModel(nome:'Ane' ,idade: 35 , imagem: "xiler.png") ,
    ];
  }
}