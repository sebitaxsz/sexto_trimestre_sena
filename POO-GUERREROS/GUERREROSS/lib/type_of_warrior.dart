/// Clase TypeOfWarrior - tipos de guerrero (arquero, mago, etc.)
class TypeOfWarrior {
  String typeOfWarrior;
  String specialty;

  static final List<TypeOfWarrior> _warriorTypes = [];

  TypeOfWarrior({required this.typeOfWarrior, this.specialty = ''});

  /// Obtener todos los tipos registrados
  static List<TypeOfWarrior> getTypeOfWarrior() => List.unmodifiable(_warriorTypes);

  /// Crear un nuevo tipo de guerrero
  static bool createTypeOfWarrior(String type, {String specialty = ''}) {
    if (type.trim().isEmpty) return false;
    _warriorTypes.add(TypeOfWarrior(typeOfWarrior: type, specialty: specialty));
    return true;
  }

  /// Editar un tipo de guerrero existente
  static bool editTypeOfWarrior(String type, {String? newType, String? newSpecialty}) {
    final index = _warriorTypes.indexWhere((w) => w.typeOfWarrior == type);
    if (index == -1) return false;
    if (newType != null) _warriorTypes[index].typeOfWarrior = newType;
    if (newSpecialty != null) _warriorTypes[index].specialty = newSpecialty;
    return true;
  }

  @override
  String toString() => 'Tipo[$typeOfWarrior - Especialidad: $specialty]';
}
