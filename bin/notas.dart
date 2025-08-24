import 'dart:io';

void notasComando()
{
  List<String> notas = <String>[];
  menu(notas);
}

String getComando()
{
  print("Digite um Comando: 1 - Adicionar nota, 2 - Listar nota, 3 - Sair");
  List<String> comandos = <String>["1", "2", "3"];
  String? entrada = "";

  entrada = stdin.readLineSync();

  if(entrada == null || !comandos.contains(entrada))
  {
    print("Comando invalido");
    getComando();
  }

  return entrada!;
}

List<String> adicionaNota(List<String> notas)
{
  print("Escreva uma nota: ");
  String? nota = "";

  nota = stdin.readLineSync();

  if(nota == null || nota.isEmpty)
  {
    print("Não é possivel adicionar uma nota vazia");
    adicionaNota(notas);
  }

  notas.add(nota!);

  return notas;
}

void listarNotas(List<String> notas)
{
  print("Sua Lista de Notas: ");
  notas.forEach((nota) {print(nota);});
}

void menu(List<String> notas)
{
  print("");
  String comando = getComando();
  print("");

  switch (comando) {
    case "1":
      adicionaNota(notas);
      menu(notas);
      break;
    case "2":
      listarNotas(notas);
      menu(notas);
      break;
    case "3":
    print("Até breve");
      break;
  }
}
