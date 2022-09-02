import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

// import '../models/region_model.dart';
import '../models/region_model.dart';
import '../services/weather_service.dart';
import '../widgets/app_drawer_widget.dart';
import '../models/region_endpoint_model.dart';
import '../screens/region_weather_screen.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({Key? key}) : super(key: key);

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  RegionEndpointModel _selectedRegionEndpoint =
      RegionEndpointModel(label: "Indonesia", endpoint: "indonesia");

  late Future<List<RegionModel>> _weathers;

  @override
  void initState() {
    super.initState();

    fetchWeather();
  }

  void fetchWeather() {
    _weathers =
        WeatherService.getProvinceWeather(_selectedRegionEndpoint.endpoint);
  }

  @override
  Widget build(BuildContext context) {
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownSearch<RegionEndpointModel>(
              items: [
                RegionEndpointModel(label: "Aceh", endpoint: "aceh"),
                RegionEndpointModel(label: "Bali", endpoint: "bali"),
                RegionEndpointModel(label: "Banten", endpoint: "banten"),
                RegionEndpointModel(label: "Bengkulu", endpoint: "bengkulu"),
                RegionEndpointModel(
                    label: "DI Yogyakarta", endpoint: "di-yogyakarta"),
                RegionEndpointModel(
                    label: "DKI Jakarta", endpoint: "dki-jakarta"),
                RegionEndpointModel(label: "Gorontalo", endpoint: "gorontalo"),
                RegionEndpointModel(label: "Jambi", endpoint: "jambi"),
                RegionEndpointModel(
                    label: "Jawa Barat", endpoint: "jawa-barat"),
                RegionEndpointModel(
                    label: "Jawa Tengah", endpoint: "jawa-tengah"),
                RegionEndpointModel(
                    label: "Jawa Timur", endpoint: "jawa-timur"),
                RegionEndpointModel(
                    label: "Kalimantan Barat", endpoint: "kalimantan-barat"),
                RegionEndpointModel(
                    label: "Kalimantan Selatan",
                    endpoint: "kalimantan-selatan"),
                RegionEndpointModel(
                    label: "Kalimantan Tengah", endpoint: "kalimantan-tengah"),
                RegionEndpointModel(
                    label: "Kalimantan Timur", endpoint: "kalimantan-timur"),
                RegionEndpointModel(
                    label: "Kalimantan Utara", endpoint: "kalimantan-utara"),
                RegionEndpointModel(
                    label: "Kep. Bangka Belitung", endpoint: "bangka-belitung"),
                RegionEndpointModel(
                    label: "Kep. Riau", endpoint: "kepulauan-riau"),
                RegionEndpointModel(label: "Lampung", endpoint: "lampung"),
                RegionEndpointModel(label: "Maluku", endpoint: "maluku"),
                RegionEndpointModel(
                    label: "Maluku Utara", endpoint: "maluku-utara"),
                RegionEndpointModel(
                    label: "Nusa Tenggara Barat",
                    endpoint: "nusa-tenggara-barat"),
                RegionEndpointModel(
                    label: "Nusa Tenggara Timur",
                    endpoint: "nusa-tenggara-timur"),
                RegionEndpointModel(label: "Papua", endpoint: "papua"),
                RegionEndpointModel(
                    label: "Papua Barat", endpoint: "papua-barat"),
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
                setState(() {
                  _selectedRegionEndpoint = value!;

                  fetchWeather();
                });
              }),
              selectedItem: _selectedRegionEndpoint,
            ),
            const SizedBox(
              height: 20.0,
            ),
            FutureBuilder(
              future: _weathers,
              builder: ((context, AsyncSnapshot<List<RegionModel>> snapshot) {
                if (snapshot.hasData) {
                  return Wrap(
                    spacing: 20.0,
                    runSpacing: 20.0,
                    alignment: WrapAlignment.start,
                    runAlignment: WrapAlignment.center,
                    children: snapshot.data!.map((region) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) =>
                                  RegionWeatherScreen(region: region)),
                            ),
                          );
                        },
                        child: Card(
                          child: SizedBox(
                            width: 135.0,
                            height: 135.0,
                            child: Center(
                              child: ListTile(
                                title: Text(region.domain),
                                subtitle: Text(region.description),
                              ),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  );
                } else if (snapshot.hasError) {
                  return const Center(
                    child: Text("Maaf, terjadi error"),
                  );
                }

                return const Center(
                  child: CircularProgressIndicator(),
                );
              }),
            )
          ],
        )),
      ),
      drawer: const AppDrawerWidget(),
    );
  }
}
