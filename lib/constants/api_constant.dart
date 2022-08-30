class ApiConstant {
  // API Gempa

  static final Uri gempaTerbaru =
      Uri.parse("https://data.bmkg.go.id/DataMKG/TEWS/autogempa.json");

  static final Uri gempaMagnitudeDiAtasLima =
      Uri.parse("https://data.bmkg.go.id/DataMKG/TEWS/gempaterkini.json");

  static final Uri gempaDirasakan =
      Uri.parse("https://data.bmkg.go.id/DataMKG/TEWS/gempadirasakan.json");

  // Shakemap harus ditambah dengan kode_shakemap di bagian akhir.
  // Contoh: https://data.bmkg.go.id/DataMKG/TEWS/20220829175824.mmi.jpg

  static const String gempaShakeMap = "https://data.bmkg.go.id/DataMKG/TEWS/";
}
