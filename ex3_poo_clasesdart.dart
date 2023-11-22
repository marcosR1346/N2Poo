abstract class Component {
  void status();
}

class Motor extends Component {
  @override
  void status() {
    print('Motor funcionando normalmente.');
  }
}

class Roda extends Component {
  @override
  void status() {
    print('Roda em boas condições.');
  }
}

class Carro {
  final Motor motor;
  final List<Roda> rodas;

  Carro(this.motor, this.rodas);

  void status() {
    motor.status();
    rodas.forEach((roda) => roda.status());
  }
}

void main() {
 
  var motorCarro = Motor();
  
  var rodasCarro = List.generate(4, (index) => Roda());

   var meuCarro = Carro(motorCarro, rodasCarro);

  meuCarro.status();
}
