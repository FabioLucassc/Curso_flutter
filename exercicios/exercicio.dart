
import 'pessoa.dart';

main(List<String> args) {
  Pessoa p1 = new Pessoa();
  p1.pessoa = 'João';
  p1.cpf = '485.123.454-36';
  print('o Sr(a) ${p1.pessoa} é portador(a) do CPF ${p1.cpf} ');
}
