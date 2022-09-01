import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

import '../models/region_model.dart';
import '../widgets/app_drawer_widget.dart';
import '../models/region_endpoint_model.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<RegionModel> regionList = [
      RegionModel(
        id: "501212",
        latitude: "-6.90992",
        longitude: "107.64691",
        coordinate: "107.64691 -6.90992",
        type: "land",
        region: "",
        level: "1",
        description: "Bandung",
        domain: "Jawa Barat",
        tags: "",
      ),
      RegionModel(
        id: "501213",
        latitude: "-6.90992",
        longitude: "107.64691",
        coordinate: "107.64691 -6.90992",
        type: "land",
        region: "",
        level: "1",
        description: "Banjar",
        domain: "Jawa Barat",
        tags: "",
      ),
      RegionModel(
        id: "501214",
        latitude: "-6.90992",
        longitude: "107.64691",
        coordinate: "107.64691 -6.90992",
        type: "land",
        region: "",
        level: "1",
        description: "Bekasi",
        domain: "Jawa Barat",
        tags: "",
      ),
    ];

    // int crossAxisCount = 2;

    // double width = MediaQuery.of(context).size.width;

    // if (width < 300) {
    //   crossAxisCount = 1;
    // } else if (width < 576) {
    //   crossAxisCount = 2;
    // } else if (width >= 576 && width < 768) {
    //   crossAxisCount = 3;
    // } else if (width >= 768 && width < 992) {
    //   crossAxisCount = 4;
    // } else {
    //   crossAxisCount = 6;
    // }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Cuaca"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DropdownSearch<RegionEndpointModel>(
              items: [
                RegionEndpointModel(label: "Aceh", endpoint: "aceh"),
                RegionEndpointModel(
                    label: "Jawa Barat", endpoint: "jawa-barat"),
                RegionEndpointModel(
                    label: "Jawa Tengah", endpoint: "jawa-tengah"),
              ],
              dropdownDecoratorProps: const DropDownDecoratorProps(
                dropdownSearchDecoration: InputDecoration(
                  labelText: "Wilayah",
                  hintText: "Pilih wilayah ...",
                ),
              ),
              popupProps: const PopupProps.menu(
                showSearchBox: true,
                searchFieldProps: TextFieldProps(
                  decoration: InputDecoration(
                    hintText: "Cari wilayah ...",
                  ),
                ),
              ),
              itemAsString: ((item) => item.label),
              onChanged: print,
              selectedItem:
                  RegionEndpointModel(label: "Aceh", endpoint: "aceh"),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Wrap(
              spacing: 20.0,
              runSpacing: 20.0,
              alignment: WrapAlignment.start,
              runAlignment: WrapAlignment.center,
              children: regionList.map((region) {
                return SizedBox(
                  width: 135.0,
                  height: 135.0,
                  child: Card(
                    child: ListTile(
                      title: Text(region.description),
                      subtitle: Text(region.domain),
                    ),
                  ),
                );
              }).toList(),
            )
          ],
        )),
      ),
      drawer: const AppDrawerWidget(),
    );
  }
}
