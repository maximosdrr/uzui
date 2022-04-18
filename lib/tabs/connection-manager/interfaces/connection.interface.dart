import 'dart:convert';

class ConnectionData {
  bool isActive;
  String connectionUri;
  String alias;
  ConnectionData({
    required this.isActive,
    required this.connectionUri,
    required this.alias,
  });

  ConnectionData copyWith({
    bool? isActive,
    String? connectionUri,
    String? alias,
  }) {
    return ConnectionData(
      isActive: isActive ?? this.isActive,
      connectionUri: connectionUri ?? this.connectionUri,
      alias: alias ?? this.alias,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'isActive': isActive});
    result.addAll({'connectionUri': connectionUri});
    result.addAll({'alias': alias});

    return result;
  }

  factory ConnectionData.fromMap(Map<String, dynamic> map) {
    return ConnectionData(
      isActive: map['isActive'] ?? false,
      connectionUri: map['connectionUri'] ?? '',
      alias: map['alias'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ConnectionData.fromJson(String source) =>
      ConnectionData.fromMap(json.decode(source));

  @override
  String toString() =>
      'ConnectionData(isActive: $isActive, connectionUri: $connectionUri, alias: $alias)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ConnectionData &&
        other.isActive == isActive &&
        other.connectionUri == connectionUri &&
        other.alias == alias;
  }

  @override
  int get hashCode =>
      isActive.hashCode ^ connectionUri.hashCode ^ alias.hashCode;
}
