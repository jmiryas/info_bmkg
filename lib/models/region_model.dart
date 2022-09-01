class RegionModel {
  final String id;
  final String latitude;
  final String longitude;
  final String coordinate;
  final String type;
  final String region;
  final String level;
  final String description;
  final String domain;
  final String tags;

  RegionModel({
    required this.id,
    required this.latitude,
    required this.longitude,
    required this.coordinate,
    required this.type,
    required this.region,
    required this.level,
    required this.description,
    required this.domain,
    required this.tags,
  });

  factory RegionModel.fromJson(Map<String, dynamic> json) {
    return RegionModel(
      id: json["id"] ?? "",
      latitude: json["latitude"] ?? "",
      longitude: json["longitude"] ?? "",
      coordinate: json["coordinate"] ?? "",
      type: json["type"] ?? "",
      region: json["region"] ?? "",
      level: json["level"] ?? "",
      description: json["description"] ?? "",
      domain: json["domain"] ?? "",
      tags: json["tags"] ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["latitude"] = latitude;
    data["longitude"] = longitude;
    data["coordinate"] = coordinate;
    data["type"] = type;
    data["region"] = region;
    data["level"] = level;
    data["description"] = description;
    data["domain"] = domain;
    data["tags"] = tags;

    return data;
  }
}
