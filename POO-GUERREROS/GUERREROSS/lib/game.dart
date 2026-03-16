import 'warrior.dart';

/// Clase Game - gestiona el juego
class Game {
  bool status;
  Warrior? objWarrior;
  DateTime timeGame;
  int level;
  List<Warrior> participants;

  Game({
    this.status = false,
    this.objWarrior,
    this.level = 1,
  })  : timeGame = DateTime.now(),
        participants = [];

  /// Iniciar el juego
  bool startGame() {
    if (status) {
      print(' El juego ya está en curso!');
      return false;
    }
    status = true;
    timeGame = DateTime.now();
    print(' ¡Juego iniciado! Nivel: $level | Hora: $timeGame');
    return true;
  }

  /// Terminar el juego
  bool endGame() {
    if (!status) {
      print(' El juego no está activo!');
      return false;
    }
    status = false;
    final duration = DateTime.now().difference(timeGame);
    print(' ¡Juego terminado! Duración: ${duration.inSeconds}s');
    return true;
  }

  /// Vista del escenario (polimorfismo: cada guerrero actúa diferente)
  void scenery() {
    print('\n === ESCENARIO DEL JUEGO (Nivel $level) ===');
    for (var w in participants) {
      w.hit(); // polimorfismo en acción
    }
    print('=========================================\n');
  }

  /// Vista del nivel actual
  void gameLevel() {
    print('\n === NIVEL $level ===');
    print('Guerreros activos: ${participants.length}');
    print('Estado: ${status ? "En juego" : "Pausado"}');
    print('====================\n');
  }

  void addParticipant(Warrior w) {
    participants.add(w);
  }

  void setWarrior(Warrior w) {
    objWarrior = w;
    print(' Guerrero principal: ${w.name}');
  }
}
