List<String>? stringToList(dynamic value) {
    if (value == null) return null;
    if (value is List) return List<String>.from(value);
    return (value as String).split(', ');
  }