/// Clase TypeOfPower - representa un poder especial
class TypeOfPower {
  double typeOfPower;
  String powerName;
  String description;

  static final List<TypeOfPower> _powers = [];

  TypeOfPower({
    required this.typeOfPower,
    required this.powerName,
    this.description = '',
  });

  /// Obtener todos los poderes registrados
  static List<TypeOfPower> getTypeOfPower() => List.unmodifiable(_powers);

  /// Crear un nuevo poder
  static bool createTypeOfPower(double value, String name, String desc) {
    if (name.trim().isEmpty) return false;
    _powers.add(TypeOfPower(typeOfPower: value, powerName: name, description: desc));
    return true;
  }

  /// Editar un poder existente por nombre
  static bool editTypeOfPower(String name, {double? newValue, String? newName, String? newDesc}) {
    final index = _powers.indexWhere((p) => p.powerName == name);
    if (index == -1) return false;
    if (newValue != null) _powers[index].typeOfPower = newValue;
    if (newName != null) _powers[index].powerName = newName;
    if (newDesc != null) _powers[index].description = newDesc;
    return true;
  }

  @override
  String toString() => 'Poder[$powerName | nivel: $typeOfPower]';
}
