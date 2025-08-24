import 'dart:io';

void main() {
  print("Digite o primeiro numero: ");
  double numeroUm = double.parse(stdin.readLineSync()!);
  print("Digite o segundo numero: ");
  double numeroDois = double.parse(stdin.readLineSync()!);

  print("Digite a operação: ");
  String operacao = stdin.readLineSync()!;

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

  switch (operacao) {
    case "+":
      soma();
      break;
    case "-":
      subtracao();
      break;
    case "/":
      divisao();
      break;
    case "*":
      multiplicacao();
      break;
    default:
    print("Não e uma Operação valida");
  }
}
