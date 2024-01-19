class Properties {
  Properties();

  factory Properties.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError('Properties.fromJson($json) is not implemented');
  }

  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }

  static fromMap(Map<String, dynamic> data) {}

  toMap() {}
}
