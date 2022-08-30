class EarthquakeModel {
  final String tanggal;
  final String jam;
  final String dateTime;
  final String coordinates;
  final String lintang;
  final String bujur;
  final String magnitude;
  final String kedalaman;
  final String wilayah;
  final String potensi;
  String? dirasakan;
  String? shakemap;

  EarthquakeModel({
    required this.tanggal,
    required this.jam,
    required this.dateTime,
    required this.coordinates,
    required this.lintang,
    required this.bujur,
    required this.magnitude,
    required this.kedalaman,
    required this.wilayah,
    required this.potensi,
    this.dirasakan = "",
    this.shakemap = "",
  });

  factory EarthquakeModel.fromJson(Map<String, dynamic> json) {
    return EarthquakeModel(
      tanggal: json["tanggal"],
      jam: json["jam"],
      dateTime: json["dateTime"],
      coordinates: json["coordinates"],
      lintang: json["lintang"],
      bujur: json["bujur"],
      magnitude: json["magnitude"],
      kedalaman: json["kedalaman"],
      wilayah: json["wilayah"],
      potensi: json["potensi"],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["tanggal"] = tanggal;
    data["jam"] = jam;
    data["dateTime"] = dateTime;
    data["coordinates"] = coordinates;
    data["lintang"] = lintang;
    data["bujur"] = bujur;
    data["magnitude"] = magnitude;
    data["kedalaman"] = kedalaman;
    data["wilayah"] = wilayah;
    data["potensi"] = potensi;

    return data;
  }
}
