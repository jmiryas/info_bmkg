import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

import '../models/earthquake_model.dart';
import '../widgets/earthquake_detail_grid_widget.dart';

class EarthquakeScreen extends StatelessWidget {
  const EarthquakeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<EarthquakeModel> earthquakeList = [
      EarthquakeModel(
        tanggal: "29 Agu 2022",
        jam: "17:58:24 WIB",
        dateTime: "2022-08-29T10:58:24+00:00",
        coordinates: "-0.92,99.23",
        lintang: "0.92 LS",
        bujur: "99.23 BT",
        magnitude: "4.0",
        kedalaman: "10 km",
        wilayah:
            "Pusat gempa berada di laut 48 km timur laut Pulau Siberut - Kep. Mentawai",
        potensi: "Gempa ini dirasakan untuk diteruskan pada masyarakat",
        dirasakan: "III Siberut Utara",
        shakemap: "20220829175824.mmi.jpg",
      ),
      EarthquakeModel(
        tanggal: "29 Agu 2022",
        jam: "10:29:14 WIB",
        dateTime: "2022-08-29T03:29:14+00:00",
        coordinates: "-0.99,98.53",
        lintang: "0.99 LS",
        bujur: "98.53 BT",
        magnitude: "6.4",
        kedalaman: "10 km",
        wilayah: "161 km BaratLaut KEP-MENTAWAI-SUMBAR",
        potensi: "Tidak berpotensi tsunami",
      ),
    ];

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        children: earthquakeList.map((earthquake) {
          String formatedDate = DateFormat("EEEE, d MMMM yyyy", "id_ID").format(
            DateTime.parse(earthquake.dateTime),
          );

          return Card(
            child: ExpansionTile(
              title: Text(
                formatedDate,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              children: [
                EarthquakeDetailGridWidget(earthquake: earthquake),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
