import '../constants/api_constant.dart';

class AppHelpers {
  final List<String> _monthNames = [
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "Mei",
    "Jun",
    "Jul",
    "Agu",
    "Sep",
    "Okt",
    "Nov",
    "Des",
  ];

  String _getMonthNameInNumber(String monthName) {
    int index = _monthNames.indexWhere((element) => element == monthName) + 1;

    if (index < 10) {
      return "0$index";
    } else {
      return "$index";
    }
  }

  String getShakemapCode(String dateTime, String jam) {
    RegExp regex = RegExp(r'[^\w\s]+');

    // Mengubah dateTime menjadi kode shakemap
    // Contoh: 31 Agu 2022
    // Hasil: 20220831

    List<String> dateTimeList = dateTime.split(" ");

    String monthInNumber = _getMonthNameInNumber(dateTimeList[1]);

    String shakeMapDateTime =
        "${dateTimeList[2]}$monthInNumber${dateTimeList[0]}";

    // Mengubah jam menjadi kode shakemap
    // Contoh: 02:06:20 WIB
    // Hasil: 020620

    String time = jam.replaceAll(regex, "").split(" ")[0];

    // Return shakemap code
    // Hasil akhir: 20220831020620.mmi.jpg

    return "$shakeMapDateTime$time.mmi.jpg";
  }

  // Mendapatkan url shakemap secara lengkap

  String getShakeMapUrl(String dateTime, String jam) {
    String shakemapCode = getShakemapCode(dateTime, jam);

    String shakemapUrl = "${ApiConstant.gempaShakeMap}$shakemapCode";

    return shakemapUrl;
  }
}
