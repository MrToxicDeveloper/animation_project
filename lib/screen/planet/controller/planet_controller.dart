import 'package:animation_project/screen/planet/model/Planet_model.dart';
import 'package:get/get.dart';

class PlanetController extends GetxController {
  List<PlanetModel> modelList = [
    PlanetModel(
        Name: "Mercury",
        Gname: "Milkyway Galaxy",
        Image:
            "asset/images/mercury.png"),
    PlanetModel(
        Name: "Earth",
        Gname: "Milkyway Galaxy",
        Image:
            "asset/images/earth.png"),
  ];
}
