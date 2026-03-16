import 'lib/it_warrior.dart';
import 'lib/type_of_power.dart';
import 'lib/type_of_warrior.dart';
import 'lib/warrior.dart';
import 'lib/warrior_subclasses.dart';
import 'lib/game.dart';

void main() {
  print('=' * 60);
  print('       GUERRERITOS DEL MAS ALLA TILIN ');
  print('=' * 60);

  // ============================================================
  // 1. CREAR 10 TIPOS DE GUERRERO
  // ============================================================
  print('\n📋 Registrando 10 tipos de guerrero...\n');

  final tiposNombres = [
    ['Arquero',    'Ataques a distancia con arco y flechas'],
    ['Mago',       'Hechizos elementales y arcanos'],
    ['Brujo',      'Maldiciones y magia oscura'],
    ['Curandero',  'Curación y soporte aliado'],
    ['Berserker',  'Fuerza bruta y frenesí de combate'],
    ['Ninja',      'Sigilo y ataques rápidos'],
    ['Paladín',    'Combate sagrado y protección'],
    ['Druida',     'Magia natural y transformación'],
    ['Cazador',    'Trampas y rastreo de bestias'],
    ['Samurái',    'Disciplina y maestría con la espada'],
  ];

  for (var t in tiposNombres) {
    TypeOfWarrior.createTypeOfWarrior(t[0], specialty: t[1]);
  }

  final tipos = TypeOfWarrior.getTypeOfWarrior();
  print(' Tipos creados:');
  for (var i = 0; i < tipos.length; i++) {
    print('  ${i + 1}. ${tipos[i]}');
  }

  // ============================================================
  // 2. CREAR PODERES
  // ============================================================
  print('\n⚡ Registrando poderes disponibles...\n');

  TypeOfPower.createTypeOfPower(95,  'Lanzar Martillo',   'Proyectil de trueno devastador');
  TypeOfPower.createTypeOfPower(80,  'Supervelocidad',    'Movimiento ultrasónico');
  TypeOfPower.createTypeOfPower(70,  'Invisibilidad',     'Ocultarse completamente');
  TypeOfPower.createTypeOfPower(85,  'Bola de Fuego',     'Proyectil de llamas');
  TypeOfPower.createTypeOfPower(60,  'Escudo Arcano',     'Barrera mágica protectora');
  TypeOfPower.createTypeOfPower(75,  'Tormenta de Hielo', 'Congela todo a su paso');
  TypeOfPower.createTypeOfPower(90,  'Rayo Divino',       'Luz sagrada que purifica');
  TypeOfPower.createTypeOfPower(65,  'Veneno Mortal',     'Toxina de acción lenta');
  TypeOfPower.createTypeOfPower(88,  'Teletransporte',    'Viaja al instante');
  TypeOfPower.createTypeOfPower(72,  'Fuerza Titánica',   'Fuerza sobrehumana');

  final poderes = TypeOfPower.getTypeOfPower();
  print(' ${poderes.length} poderes registrados.\n');

  // ============================================================
  // 3. CREAR 20 GUERREROS (con herencia y polimorfismo)
  // ============================================================
  print('  Creando LOS 20 guerreros...\n');

  List<Warrior> guerreros = [
    // Arqueros
    Archer(name: 'Legolas el Certero',   power: 78, warriorType: tipos[0])
      ..addPower(poderes[1])..addPower(poderes[2]),
    Archer(name: 'Sylvana Oscura',       power: 72, warriorType: tipos[0])
      ..addPower(poderes[7]),

    // Magos
    Mage(name: 'Gandalf el Gris',        power: 95, warriorType: tipos[1])
      ..addPower(poderes[3])..addPower(poderes[5])..addPower(poderes[6]),
    Mage(name: 'Medivh el Guardián',     power: 90, warriorType: tipos[1])
      ..addPower(poderes[3])..addPower(poderes[4]),

    // Brujos
    Warlock(name: 'Gul\'dan el Maldito', power: 88, warriorType: tipos[2])
      ..addPower(poderes[7])..addPower(poderes[3]),
    Warlock(name: 'Morgoth Sombrío',     power: 85, warriorType: tipos[2])
      ..addPower(poderes[7]),

    // Curanderos
    Healer(name: 'Soraya la Bendita',    power: 55, warriorType: tipos[3])
      ..addPower(poderes[6])..addPower(poderes[4]),
    Healer(name: 'Brother Aldric',       power: 50, warriorType: tipos[3])
      ..addPower(poderes[6]),

    // Berserkers (Warrior base)
    Warrior(name: 'Kratos el bestiash askerosas ',   power: 99, warriorType: tipos[4])
      ..addPower(poderes[0])..addPower(poderes[9]),
    Warrior(name: 'Ragnar Desatado',     power: 92, warriorType: tipos[4])
      ..addPower(poderes[9]),

    // Ninjas (Warrior base con poderes de sigilo)
    Warrior(name: 'Shadow Kira',         power: 80, warriorType: tipos[5])
      ..addPower(poderes[2])..addPower(poderes[1]),
    Warrior(name: 'Hanzo el Silencioso', power: 77, warriorType: tipos[5])
      ..addPower(poderes[2]),

    // Paladines (Healer con combate)
    Healer(name: 'Arthas el Noble',      power: 85, warriorType: tipos[6])
      ..addPower(poderes[6])..addPower(poderes[9]),
    Archer(name: 'Uther la Luz',         power: 70, warriorType: tipos[6])
      ..addPower(poderes[6]),

    // Druidas (Mage de naturaleza)
    Mage(name: 'Malfurion Noche',        power: 82, warriorType: tipos[7])
      ..addPower(poderes[5])..addPower(poderes[4]),
    Warlock(name: 'Cenarius el Bosque',  power: 78, warriorType: tipos[7])
      ..addPower(poderes[3]),

    // Cazadores
    Archer(name: 'Rexxar el Campeón',    power: 75, warriorType: tipos[8])
      ..addPower(poderes[1])..addPower(poderes[7]),
    Warrior(name: 'Yennefer Cazadora',   power: 68, warriorType: tipos[8])
      ..addPower(poderes[2]),

    // Samuráis
    Warrior(name: 'Musashi el Maestro',  power: 93, warriorType: tipos[9])
      ..addPower(poderes[0])..addPower(poderes[9]),
    Warrior(name: 'Miyamoto el Ronin',   power: 87, warriorType: tipos[9])
      ..addPower(poderes[8]),
  ];

  // ============================================================
  // 4. MOSTRAR LOS 20 GUERREROS (nombre y poder)
  // ============================================================
  print('=' * 60);
  print('   LISTA DE 20 GUERREROS (Nombre y Poder)');
  print('=' * 60);
  for (var i = 0; i < guerreros.length; i++) {
    final g = guerreros[i];
    final tipo = g.warriorType?.typeOfWarrior ?? 'Sin tipo';
    final powersStr = g.powers.map((p) => p.powerName).join(', ');
    print('${(i + 1).toString().padLeft(2)}.   ${g.name} | Poder: ${g.power.toStringAsFixed(1)} | Tipo: $tipo | Poderes: ${powersStr.isEmpty ? "ninguno" : powersStr}');
  }

  // ============================================================
  // 5. DEMOSTRAR POLIMORFISMO
  // ============================================================
  print('\n${'=' * 60}');
  print('   POLIMORFISMO - Todos atacan con hit()');
  print('=' * 60);
  for (var g in guerreros.take(6)) {
    g.hit();
  }

  // ============================================================
  // 6. DEMOSTRAR SOBRECARGA DE MÉTODOS
  // ============================================================
  print('\n${'=' * 60}');
  print('   SOBRECARGA DE MÉTODOS');
  print('=' * 60);
  final k = guerreros[8] as Warrior;
  k.hit();                            // hit() base
  k.hitWithDamage(55.5);             // hit con daño
  k.hitTarget('Dragón Anciano');      // hit con objetivo

  // Curandero cura a otro
  final healer = guerreros[6] as Healer;
  final herido = guerreros[8];
  herido.health = 40;
  healer.heal(herido);

  // Mago lanza hechizo especial
  final mage = guerreros[2] as Mage;
  mage.castSpell('Tormenta Arcana');

  // ============================================================
  // 7. DEMOSTRAR EL JUEGO
  // ============================================================
  print('\n${'=' * 60}');
  print(' INICIA EL JUEGUITO');
  print('=' * 60);

  final game = Game(level: 3);
  game.startGame();
  game.setWarrior(guerreros[8]);
  guerreros.take(5).forEach((g) => game.addParticipant(g));
  game.gameLevel();
  game.scenery();
  game.endGame();

}
