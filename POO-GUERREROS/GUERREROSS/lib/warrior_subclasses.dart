import 'warrior.dart';
import 'type_of_power.dart';
import 'type_of_warrior.dart';

// ============================================================
// ARQUERO - hereda de Warrior, sobrescribe hit() y run()
// ============================================================
class Archer extends Warrior {
  int arrows;

  Archer({
    required String name,
    required double power,
    this.arrows = 30,
    List<TypeOfPower>? powers,
    TypeOfWarrior? warriorType,
  }) : super(name: name, power: power, health: 80, powers: powers, warriorType: warriorType);

  @override
  bool hit() {
    if (arrows <= 0) {
      print('$name no tiene flechas!');
      return false;
    }
    arrows--;
    print('$name dispara una flecha! Flechas restantes: $arrows');
    return true;
  }

  @override
  List<String> run() {
    print('$name huye disparando hacia atrás!');
    return ['disparar_atrás', 'sprint', 'esconderse'];
  }

  @override
  void showInfo() {
    super.showInfo();
    print('    Flechas: $arrows');
  }
}

// ============================================================
// MAGO - hereda de Warrior, sobrescribe hit() y live()
// ============================================================
class Mage extends Warrior {
  int mana;

  Mage({
    required String name,
    required double power,
    this.mana = 200,
    List<TypeOfPower>? powers,
    TypeOfWarrior? warriorType,
  }) : super(name: name, power: power, health: 60, powers: powers, warriorType: warriorType);

  @override
  bool hit() {
    if (mana < 20) {
      print('$name no tiene maná suficiente!');
      return false;
    }
    mana -= 20;
    print('$name lanza un hechizo! Maná restante: $mana');
    return true;
  }

  @override
  double live() {
    // El mago regenera algo de vida gracias a su maná
    return health + (mana * 0.1);
  }

  void castSpell(String spell) {
    print(' $name lanza "$spell"! (maná: $mana)');
    mana -= 30;
  }

  @override
  void showInfo() {
    super.showInfo();
    print('    Maná: $mana');
  }
}

// ============================================================
// BRUJO - hereda de Mage (herencia multinivel)
// ============================================================
class Warlock extends Mage {
  int curses;

  Warlock({
    required String name,
    required double power,
    this.curses = 5,
    List<TypeOfPower>? powers,
    TypeOfWarrior? warriorType,
  }) : super(name: name, power: power, mana: 150, powers: powers, warriorType: warriorType);

  @override
  bool hit() {
    if (curses <= 0) {
      print('$name no tiene maldiciones! Ataca físicamente.');
      return super.hit();
    }
    curses--;
    print('$name lanza una MALDICIÓN oscura! Maldiciones restantes: $curses');
    return true;
  }

  void curseTarjet(String target) {
    print(' $name maldice a $target eternamente!');
    curses--;
  }

  @override
  void showInfo() {
    super.showInfo();
    print('    Maldiciones: $curses');
  }
}

// ============================================================
// CURANDERO - hereda de Warrior, override de live() y hit()
// ============================================================
class Healer extends Warrior {
  int healingPotions;

  Healer({
    required String name,
    required double power,
    this.healingPotions = 10,
    List<TypeOfPower>? powers,
    TypeOfWarrior? warriorType,
  }) : super(name: name, power: power, health: 90, powers: powers, warriorType: warriorType);

  @override
  bool hit() {
    print('$name usa su bastón curativo para golpear (daño: ${power * 0.5})!');
    return true;
  }

  @override
  double live() {
    // El curandero siempre tiene vida bonus
    return health + 20.0;
  }

  bool heal(Warrior target) {
    if (healingPotions <= 0) {
      print('$name no tiene pociones de cura!');
      return false;
    }
    healingPotions--;
    target.health = (target.health + 30).clamp(0, 100);
    print(' $name cura a ${target.name}! Vida actual: ${target.health}. Pociones: $healingPotions');
    return true;
  }

  @override
  void showInfo() {
    super.showInfo();
    print('    Pociones: $healingPotions');
  }
}
