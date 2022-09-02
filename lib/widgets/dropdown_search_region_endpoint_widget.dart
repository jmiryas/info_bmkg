import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

import '../models/region_endpoint_model.dart';

class DropdownSearchRegionEndpointWidget extends StatelessWidget {
  const DropdownSearchRegionEndpointWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    RegionEndpointModel _selectedRegionEndpoint =
        RegionEndpointModel(label: "Indonesia", endpoint: "indonesia");

    return DropdownSearch<RegionEndpointModel>(
      items: [
        RegionEndpointModel(label: "Aceh", endpoint: "aceh"),
        RegionEndpointModel(label: "Bali", endpoint: "bali"),
        RegionEndpointModel(label: "Banten", endpoint: "banten"),
        RegionEndpointModel(label: "Bengkulu", endpoint: "bengkulu"),
        RegionEndpointModel(label: "DI Yogyakarta", endpoint: "di-yogyakarta"),
        RegionEndpointModel(label: "DKI Jakarta", endpoint: "dki-jakarta"),
        RegionEndpointModel(label: "Gorontalo", endpoint: "gorontalo"),
        RegionEndpointModel(label: "Jambi", endpoint: "jambi"),
        RegionEndpointModel(label: "Jambi", endpoint: "jambi"),
        RegionEndpointModel(label: "Jawa Barat", endpoint: "jawa-barat"),
        RegionEndpointModel(label: "Jawa Tengah", endpoint: "jawa-tengah"),
        RegionEndpointModel(label: "Jawa Timur", endpoint: "jawa-timur"),
        RegionEndpointModel(
            label: "Kalimantan Barat", endpoint: "kalimantan-barat"),
        RegionEndpointModel(
            label: "Kalimantan Selatan", endpoint: "kalimantan-selatan"),
        RegionEndpointModel(
            label: "Kalimantan Tengah", endpoint: "kalimantan-tengah"),
        RegionEndpointModel(
            label: "Kalimantan Timur", endpoint: "kalimantan-timur"),
        RegionEndpointModel(
            label: "Kalimantan Utara", endpoint: "kalimantan-utara"),
        RegionEndpointModel(
            label: "Kep. Bangka Belitung", endpoint: "kep-bangka-belitung"),
        RegionEndpointModel(label: "Kep. Riau", endpoint: "kep-riau"),
        RegionEndpointModel(label: "Lampung", endpoint: "lampung"),
        RegionEndpointModel(label: "Maluku", endpoint: "maluku"),
        RegionEndpointModel(label: "Maluku Utara", endpoint: "maluku-utara"),
        RegionEndpointModel(
            label: "Nusa Tenggara Barat", endpoint: "nusa-tenggara-barat"),
        RegionEndpointModel(
            label: "Nusa Tenggara Timur", endpoint: "nusa-tenggara-timur"),
        RegionEndpointModel(label: "Papua", endpoint: "papua"),
        RegionEndpointModel(label: "Papua Barat", endpoint: "papua-barat"),
        RegionEndpointModel(label: "Riau", endpoint: "riau"),
        RegionEndpointModel(
            label: "Sulawesi Barat", endpoint: "sulawesi-barat"),
        RegionEndpointModel(
            label: "Sulawesi Selatan", endpoint: "sulawesi-selatan"),
        RegionEndpointModel(
            label: "Sulawesi Tenggara", endpoint: "sulawesi-tenggara"),
        RegionEndpointModel(
            label: "Sulawesi Utara", endpoint: "sulawesi-utara"),
        RegionEndpointModel(
            label: "Sumatera Barat", endpoint: "sumatera-barat"),
        RegionEndpointModel(
            label: "Sumatera Selatan", endpoint: "sumatera-selatan"),
        RegionEndpointModel(
            label: "Sumatera Utara", endpoint: "sumatera-utara"),
        RegionEndpointModel(label: "Indonesia", endpoint: "indonesia"),
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
      onChanged: ((value) {
        // selectedRegionEndpoint = value!;
      }),
      selectedItem:
          RegionEndpointModel(label: "Indonesia", endpoint: "indonesia"),
    );
  }
}
