import 'it_warrior.dart';
import 'type_of_power.dart';
import 'type_of_warrior.dart';

/// Clase base Warrior - implementa ITWarrior
class Warrior implements ITWarrior {
  double power;
  String name;
  int health;
  List<TypeOfPower> powers;
  TypeOfWarrior? warriorType;

  Warrior({
    required this.name,
    required this.power,
    this.health = 100,
    List<TypeOfPower>? powers,
    this.warriorType,
  }) : powers = powers ?? [];

  // --- Implementación de ITWarrior ---

  @override
  bool hit() {
    print('$name ataca con poder $power!');
    return power > 0;
  }

  @override
  List<String> run() {
    print('$name está huyendo!');
    return ['huir', 'esquivar', 'retroceder'];
  }

  @override
  double live() {
    return health.toDouble();
  }

  // --- Métodos propios ---

  void showInfo() {
    final tipo = warriorType?.typeOfWarrior ?? 'Sin tipo';
    final poderes = powers.map((p) => p.powerName).join(', ');
    print('$name | Poder: $power | Tipo: $tipo | Poderes: ${poderes.isEmpty ? "ninguno" : poderes}');
  }

  void addPower(TypeOfPower p) {
    powers.add(p);
    power += p.typeOfPower * 0.1; // cada poder incrementa el poder base
  }

  /// Sobrecarga simulada: hit con daño específico
  bool hitWithDamage(double damage) {
    print('$name golpea causando $damage de daño!');
    return damage > 0;
  }

  /// Sobrecarga simulada: hit con objetivo
  bool hitTarget(String target) {
    print('$name ataca a $target!');
    return true;
  }

  @override
  String toString() => 'Warrior($name, poder: $power)';
}
