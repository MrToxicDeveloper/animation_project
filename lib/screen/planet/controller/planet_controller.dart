import 'package:animation_project/screen/planet/model/Planet_model.dart';
import 'package:get/get.dart';

class PlanetController extends GetxController {
  List<PlanetModel> modelList = [
    PlanetModel(
        Name: "Mercury",
        Gname: "Milkyway Galaxy",
        Image: "asset/images/mercury1.png",
        BGI: "asset/images/mBGI.jpg",
        Description:
            "Mercury is the smallest planet in the Solar System. It is the closest planet to the sun. It makes one trip around the Sun once every 87.969 days. Mercury is bright when we can see it from Earth."),
    PlanetModel(
        Name: "Earth",
        Gname: "Milkyway Galaxy",
        Image: "asset/images/earth1.png",
        BGI: "asset/images/eBGI.jpg",
        Description:
            "Earth is a terrestrial planet. It is small and rocky. Earth's atmosphere is the right thickness to keep the planet warm so living things like us can be there. It’s the only planet in our solar system we know of that supports life. It is mostly nitrogen, and it has plenty of oxygen for us to breathe."),
    PlanetModel(
        Name: "Mars",
        Gname: "Milkyway Galaxy",
        Image: "asset/images/mars.png",
        BGI: "asset/images/maBGI.jpg",
        Description:
            "Mars is the fourth planet and the furthest terrestrial planet from the Sun. The reason Mars has a red color on its surface is due to the finely-grained iron (III) oxide dust in the soil, which give rise to its nickname, the Red Planet."),
  ];
}
