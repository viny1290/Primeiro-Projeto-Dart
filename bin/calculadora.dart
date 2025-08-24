import 'dart:io';

void calculadora() {
  double numeroUm = 0;
  double numeroDois = 0;
  String operacao = "";
  String? entrada = "";

  List<String> operacoes = <String>["+", "-", "*", "/"];

  void soma()
  {
    print(numeroUm + numeroDois);
  }

  void subtracao()
  {
    print(numeroUm - numeroDois);
  }

  void divisao()
  {
    print(numeroUm / numeroDois);
  }

  void multiplicacao()
  {
    print(numeroUm * numeroDois);
  }

  void calcular()
  {
    switch (operacao)
    {
      case "+":
        print("O resultado da Operação é: ");
        soma();
        break;
      case "-":
        print("O resultado da Operação é: ");
        subtracao();
        break;
      case "/":
        print("O resultado da Operação é: ");
        divisao();
        break;
      case "*":
        print("O resultado da Operação é: ");
        multiplicacao();
        break;
    }
  }

  void getOperacao()
  {
    print("Digite uma Operação: ${operacoes.toString()}");
    entrada = stdin.readLineSync();
    if(entrada != null)
    {
      if(operacoes.contains(entrada))
      {
        operacao = entrada!;
      }else
      {
        print("Operação invalida");
        getOperacao();
      }
    }
  }

  double getNumero(String valor)
  {
    print("Digite o $valor numero: ");
    entrada = stdin.readLineSync();
    if(entrada != null)
    {
      var numero = double.tryParse(entrada!);

      if(numero != null)
      {
        return double.parse(entrada!);
      }else 
      {
        return 0;
      }

    }else 
    {
      return 0;
    }
  }

  numeroUm = getNumero( "Primeiro");

  getOperacao();

  numeroDois = getNumero("Segundo");

  calcular();
}
