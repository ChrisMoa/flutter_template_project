/// An interface for classes that can be serialized to and from JSON
abstract class ISerializable {
  /// Factory constructor to create an instance from a map.
  factory ISerializable.fromMap(Map<String, dynamic> map) {
    throw UnimplementedError('fromMap() is not implemented');
  }

  /// Converts the instance to a map
  Map<String, dynamic> toMap() {
    throw UnimplementedError('toMap() is not implemented');
  }

  /// Returns a string representation of the instance
  @override
  String toString() {
    throw UnimplementedError('toJson() is not implemented');
  }

  @override
  factory ISerializable.fromString(String classString) {
    throw UnimplementedError('fromString(classString) is not implemented');
  }

  /// Returns the primary key of the instance
  String getPrimaryKey() {
    throw UnimplementedError('getPrimaryKey() is not implemented');
  }

  static String getPrimaryKeyName() {
    return 'id';
  }
}
