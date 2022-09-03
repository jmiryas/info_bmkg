import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/rendering.dart';
// import 'package:intl/intl.dart';

import '../models/param_model.dart';
import '../models/region_model.dart';

class RegionWeatherScreen extends StatelessWidget {
  final RegionModel region;
  const RegionWeatherScreen({
    super.key,
    required this.region,
  });

  @override
  Widget build(BuildContext context) {
    String getDomainMapUrl() {
      if (region.domain == "Aceh") {
        return "https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/Flag_of_Aceh%2C_Indonesia.svg/640px-Flag_of_Aceh%2C_Indonesia.svg.png";
      } else if (region.domain == "Sumatera Utara") {
        return "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Flag_of_North_Sumatra.svg/640px-Flag_of_North_Sumatra.svg.png";
      } else if (region.domain == "Sumatera Barat") {
        return "https://upload.wikimedia.org/wikipedia/commons/thumb/6/64/Flag_of_West_Sumatra.svg/640px-Flag_of_West_Sumatra.svg.png";
      } else if (region.domain == "Riau") {
        return "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/Flag_of_Riau.svg/640px-Flag_of_Riau.svg.png";
      } else if (region.domain == "Kep. Riau") {
        return "https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Flag_of_Riau_Islands.svg/640px-Flag_of_Riau_Islands.svg.png";
      } else if (region.domain == "Jambi") {
        return "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/Flag_of_Jambi.svg/640px-Flag_of_Jambi.svg.png";
      } else if (region.domain == "Sumatera Selatan") {
        return "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ab/Flag_of_South_Sumatra_%28vectorised%29.svg/640px-Flag_of_South_Sumatra_%28vectorised%29.svg.png";
      } else if (region.domain == "Bengkulu") {
        return "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Flag_of_Bengkulu.svg/640px-Flag_of_Bengkulu.svg.png";
      } else if (region.domain == "Kep. Bangka Belitung") {
        return "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1d/Flag_of_Bangka-Belitung.svg/640px-Flag_of_Bangka-Belitung.svg.png";
      } else if (region.domain == "Lampung") {
        return "https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Flag_of_Lampung.svg/640px-Flag_of_Lampung.svg.png";
      } else if (region.domain == "Banten") {
        return "https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/Flag_of_Banten%2C_Indonesia.svg/640px-Flag_of_Banten%2C_Indonesia.svg.png";
      } else if (region.domain == "DKI Jakarta") {
        return "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8e/Flag_of_Jakarta_%28vectorised%29.svg/640px-Flag_of_Jakarta_%28vectorised%29.svg.png";
      } else if (region.domain == "Jawa Barat") {
        return "https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/Flag_of_West_Java_%28vectorised%29.svg/640px-Flag_of_West_Java_%28vectorised%29.svg.png";
      } else if (region.domain == "Jawa Tengah") {
        return "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2d/Flag_of_Central_Java.svg/640px-Flag_of_Central_Java.svg.png";
      } else if (region.domain == "DI Yogyakarta") {
        return "https://upload.wikimedia.org/wikipedia/commons/thumb/7/70/Flag_of_Yogyakarta.svg/640px-Flag_of_Yogyakarta.svg.png";
      } else if (region.domain == "Jawa Timur") {
        return "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3d/Flag_of_East_Java.svg/640px-Flag_of_East_Java.svg.png";
      } else if (region.domain == "Bali") {
        return "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/Flag_of_Bali.svg/640px-Flag_of_Bali.svg.png";
      } else if (region.domain == "Nusa Tenggara Barat") {
        return "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1f/Flag_of_West_Nusa_Tenggara.svg/640px-Flag_of_West_Nusa_Tenggara.svg.png";
      } else if (region.domain == "Nusa Tenggara Timur") {
        return "https://upload.wikimedia.org/wikipedia/commons/thumb/5/57/Flag_of_East_Nusa_Tenggara.svg/640px-Flag_of_East_Nusa_Tenggara.svg.png";
      } else if (region.domain == "Kalimantan Barat") {
        return "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8b/Flag_of_West_Kalimantan.svg/640px-Flag_of_West_Kalimantan.svg.png";
      } else if (region.domain == "Kalimantan Tengah") {
        return "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Flag_of_Central_Kalimantan.svg/640px-Flag_of_Central_Kalimantan.svg.png";
      } else if (region.domain == "Kalimantan Selatan") {
        return "https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/Flag_of_South_Kalimantan.svg/640px-Flag_of_South_Kalimantan.svg.png";
      } else if (region.domain == "Kalimantan Timur") {
        return "https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/Flag_of_East_Kalimantan.svg/640px-Flag_of_East_Kalimantan.svg.png";
      } else if (region.domain == "Kalimantan Utara") {
        return "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/Flag_of_North_Kalimantan.svg/640px-Flag_of_North_Kalimantan.svg.png";
      } else if (region.domain == "Sulawesi Barat") {
        return "https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Flag_of_West_Sulawesi.svg/640px-Flag_of_West_Sulawesi.svg.png";
      } else if (region.domain == "Sulawesi Selatan") {
        return "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/Flag_of_South_Sulawesi.svg/640px-Flag_of_South_Sulawesi.svg.png";
      } else if (region.domain == "Sulawesi Tenggara") {
        return "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Flag_of_Southeast_Sulawesi.svg/640px-Flag_of_Southeast_Sulawesi.svg.png";
      } else if (region.domain == "Sulawesi Tengah") {
        return "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/Flag_of_Central_Sulawesi.svg/640px-Flag_of_Central_Sulawesi.svg.png";
      } else if (region.domain == "Gorontalo") {
        return "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Flag_of_Gorontalo.svg/640px-Flag_of_Gorontalo.svg.png";
      } else if (region.domain == "Sulawesi Utara") {
        return "https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Flag_of_North_Sulawesi.svg/640px-Flag_of_North_Sulawesi.svg.png";
      } else if (region.domain == "Maluku") {
        return "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Flag_of_Maluku.svg/640px-Flag_of_Maluku.svg.png";
      } else if (region.domain == "Maluku Utara") {
        return "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Flag_of_North_Maluku.svg/640px-Flag_of_North_Maluku.svg.png";
      } else if (region.domain == "Papua Barat") {
        return "https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Flag_of_West_Papua_%28vectorised%29.svg/640px-Flag_of_West_Papua_%28vectorised%29.svg.png";
      } else if (region.domain == "Papua") {
        return "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Flag_of_Papua_2.svg/640px-Flag_of_Papua_2.svg.png";
      }

      return "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9f/Flag_of_Indonesia.svg/640px-Flag_of_Indonesia.svg.png";
    }

    // double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(region.description),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: CachedNetworkImage(
                        imageUrl: getDomainMapUrl(),
                        fit: BoxFit.cover,
                        placeholder: (context, url) => const Center(
                          child: SizedBox(
                            width: 30.0,
                            height: 30.0,
                            child: CircularProgressIndicator(),
                          ),
                        ),
                        errorWidget: (context, url, error) =>
                            const Text("Maaf, gambar tidak ditemukan"),
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    ListTile(
                      title: const Text("Latitude"),
                      trailing: Text(region.latitude),
                    ),
                    ListTile(
                      title: const Text("Longitude"),
                      trailing: Text(region.longitude),
                    ),
                    ListTile(
                      title: const Text("Coordinate"),
                      trailing: Text(region.coordinate),
                    ),
                    ListTile(
                      title: const Text("Kota"),
                      trailing: Text(region.description),
                    ),
                    ListTile(
                      title: const Text("Provinsi"),
                      trailing: Text(region.domain),
                    ),
                    Divider(
                      color: Colors.grey.shade200,
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                List.generate(region.params.length, (index) {
                  ParamModel param = region.params[index];

                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ListTile(
                        title: Text(param.description),
                        subtitle: Text(param.type),
                      ),
                      Wrap(
                        alignment: WrapAlignment.start,
                        runAlignment: WrapAlignment.center,
                        spacing: 20.0,
                        runSpacing: 20.0,
                        children: param.times.map((time) {
                          return SizedBox(
                            width: 140.0,
                            // height: 200.0,
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    time.value.isNotEmpty
                                        ? ListTile(
                                            title: const Text("Value"),
                                            subtitle: Text(time.value),
                                          )
                                        : const SizedBox(),
                                    time.celcius.isNotEmpty &&
                                            time.fahrenheit.isNotEmpty
                                        ? ListTile(
                                            title: const Text("Suhu"),
                                            subtitle: Text(
                                                "${time.celcius} / ${time.fahrenheit}"),
                                          )
                                        : const SizedBox(),
                                    time.name.isNotEmpty
                                        ? ListTile(
                                            title: const Text("Kondisi"),
                                            subtitle: Text(time.name),
                                          )
                                        : const SizedBox(),
                                    time.deg.isNotEmpty
                                        ? ListTile(
                                            title: const Text("DEG"),
                                            subtitle: Text(time.deg),
                                          )
                                        : const SizedBox(),
                                    time.card.isNotEmpty
                                        ? ListTile(
                                            title: const Text("Arah Angin"),
                                            subtitle: Text(time.card),
                                          )
                                        : const SizedBox(),
                                    time.sexa.isNotEmpty
                                        ? ListTile(
                                            title: const Text("SEXA"),
                                            subtitle: Text(time.sexa),
                                          )
                                        : const SizedBox(),
                                    time.kt.isNotEmpty
                                        ? ListTile(
                                            title: const Text("KT"),
                                            subtitle: Text(time.kt),
                                          )
                                        : const SizedBox(),
                                    time.mph.isNotEmpty
                                        ? ListTile(
                                            title: const Text("MPH"),
                                            subtitle: Text(time.mph),
                                          )
                                        : const SizedBox(),
                                    time.kph.isNotEmpty
                                        ? ListTile(
                                            title: const Text("KPH"),
                                            subtitle: Text(time.kph),
                                          )
                                        : const SizedBox(),
                                    time.ms.isNotEmpty
                                        ? ListTile(
                                            title: const Text("MS"),
                                            subtitle: Text(time.ms),
                                          )
                                        : const SizedBox(),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ],
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
