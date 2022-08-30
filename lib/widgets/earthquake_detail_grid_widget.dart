import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../helpers/app_helpers.dart';
import '../constants/api_constant.dart';
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
          trailing: earthquake.wilayah,
        ),
        earthquake.dirasakan != null && earthquake.dirasakan!.isNotEmpty
            ? EarthquakeDetailItemWidget(
                title: "Dirasakan",
                trailing: earthquake.dirasakan!,
              )
            : const SizedBox(),
        GestureDetector(
          onTap: () {
            showDialog(
                context: context,
                builder: (context) {
                  String shakeMapUrl =
                      "${ApiConstant.gempaShakeMap}${AppHelpers.getShakemapCode(earthquake.dateTime, earthquake.jam)}";

                  return CustomAlertDialogWidget(
                    title: "PETA",
                    children: [
                      CachedNetworkImage(
                        imageUrl: shakeMapUrl,
                        fit: BoxFit.cover,
                        placeholder: (context, url) =>
                            const CircularProgressIndicator(),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                    ],
                  );
                });
          },
          child: Container(
            width: double.infinity,
            height: 50.0,
            color: Theme.of(context).primaryColor,
            child: const Center(
              child: Text("LIHAT PETA"),
            ),
          ),
        ),
      ],
    );
  }
}