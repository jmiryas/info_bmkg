class AppHelpers {
  static String getShakemapCode(String dateTime, String jam) {
    RegExp regex = RegExp(r'[^\w\s]+');

    String date = dateTime.split("T")[0].replaceAll(regex, "");

    String time = jam.replaceAll(regex, "").split(" ")[0];

    return "$date$time.mmi.jpg";
  }
}
