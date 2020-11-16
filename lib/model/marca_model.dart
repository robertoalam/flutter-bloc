class MarcaModel{
  String nome;
  String imagem;
  double fortuna;

  MarcaModel({this.nome, this.imagem, this.fortuna });

  List<MarcaModel> get buscarLista {
    return [
      new MarcaModel(nome:'Apple' ,fortuna: 322.99 , imagem: "apple.png") ,
      new MarcaModel(nome:'Amazon' ,fortuna:  200.6 , imagem: "amazon.png") ,
      new MarcaModel(nome:'Microsoft ' ,fortuna: 166  , imagem: "microsoft.png") ,
      new MarcaModel(nome:'Google' , fortuna: 165.44 , imagem: "google.png") ,
      new MarcaModel(nome:'Samsung ' ,fortuna: 62.28 , imagem: "samsung.png") ,
      new MarcaModel(nome:'Coca-Cola' ,fortuna: 56.89 , imagem: "coca.png") ,
      new MarcaModel(nome:'Toyota ' ,fortuna:  51.59 , imagem: "toyota.png") ,
      new MarcaModel(nome:'Mercedes-Benz' ,fortuna: 49.26 , imagem: "mercedez.png") ,
      new MarcaModel(nome:"McDonald's" ,fortuna:  42.8 , imagem: "mc.png") ,
      new MarcaModel(nome:'Disney ' ,fortuna: 40.77 , imagem: "disney.png") ,
      new MarcaModel(nome:'Pepsico' ,fortuna: 39 , imagem: "pepsico.png") ,
      new MarcaModel(nome:'GM' ,fortuna: 38.67 , imagem: "gm.png"),
      new MarcaModel(nome:'Nike' ,fortuna: 37.5 , imagem: "nike.png"),
      new MarcaModel(nome:'Walmart' ,fortuna: 37 , imagem: "walmart.png"),
      new MarcaModel(nome:'Huawei' ,fortuna: 36.5 , imagem: "huawei.png"),

    ];
  }
}