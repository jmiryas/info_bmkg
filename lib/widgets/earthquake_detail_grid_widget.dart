import 'package:flutter/material.dart';
import 'package:info_bmkg/locators/locator.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../helpers/app_helpers.dart';
import '../models/earthquake_model.dart';
import '../widgets/custom_alert_dialog_widget.dart';
import '../widgets/earthquake_detail_item_widget.dart';

class EarthquakeDetailGridWidget extends StatelessWidget {
  final EarthquakeModel earthquake;

  const EarthquakeDetailGridWidget({
    Key? key,
    required this.earthquake,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EarthquakeDetailItemWidget(
          title: "Tanggal",
          trailing: earthquake.tanggal,
        ),
        EarthquakeDetailItemWidget(
          title: "Jam",
          trailing: earthquake.jam,
        ),
        EarthquakeDetailItemWidget(
          title: "Koordinat",
          trailing: earthquake.coordinates,
        ),
        EarthquakeDetailItemWidget(
          title: "Lintang",
          trailing: earthquake.lintang,
        ),
        EarthquakeDetailItemWidget(
          title: "Bujur",
          trailing: earthquake.bujur,
        ),
        EarthquakeDetailItemWidget(
          title: "Magnitude",
          trailing: earthquake.magnitude,
        ),
        EarthquakeDetailItemWidget(
          title: "Kedalaman",
          trailing: earthquake.kedalaman,
        ),
        EarthquakeDetailItemWidget(
          title: "Wilayah",
          subtitle: earthquake.wilayah,
        ),
        earthquake.potensi != null && earthquake.potensi!.isNotEmpty
            ? EarthquakeDetailItemWidget(
                title: "Potensi",
                subtitle: earthquake.potensi!,
              )
            : const SizedBox(),
        earthquake.dirasakan != null && earthquake.dirasakan!.isNotEmpty
            ? EarthquakeDetailItemWidget(
                title: "Dirasakan",
                subtitle: earthquake.dirasakan!,
              )
            : const SizedBox(),
        GestureDetector(
          onTap: () {
            showDialog(
                context: context,
                builder: (context) {
                  String shakeMapUrl = getItLocator
                      .get<AppHelpers>()
                      .getShakeMapUrl(earthquake.tanggal, earthquake.jam);

                  return CustomAlertDialogWidget(
                    title: "PETA",
                    children: [
                      InteractiveViewer(
                        clipBehavior: Clip.none,
                        minScale: 1,
                        maxScale: 4,
                        child: CachedNetworkImage(
                          imageUrl: shakeMapUrl,
                          fit: BoxFit.cover,
                          placeholder: (context, url) =>
                              const CircularProgressIndicator(),
                          errorWidget: (context, url, error) =>
                              const Text("Maaf. gambar tidak ditemukan"),
                        ),
                      )
                    ],
                  );
                });
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 50.0,
              color: Theme.of(context).primaryColor,
              child: const Center(
                child: Text(
                  "LIHAT PETA",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
