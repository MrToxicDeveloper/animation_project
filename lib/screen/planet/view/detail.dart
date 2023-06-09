import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/planet_controller.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> with SingleTickerProviderStateMixin {

  PlanetController controller = Get.put(PlanetController());
  int index = Get.arguments;

  AnimationController? animationController;
  Animation? rotate;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 10),
    );
    rotate = Tween<double>(begin: 10, end: 10).animate(animationController!);
    animationController!.repeat();
    animationController!.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade700,
        appBar: AppBar(
          title: Text("Details"),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: Image.asset("${controller.modelList[index].BGI}",fit: BoxFit.cover,)
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            title: Text(
                              "${controller.modelList[index].Name}",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            subtitle: Text(
                              "${controller.modelList[index].Gname}",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text("${controller.modelList[index].Description}",style: TextStyle(
                              // fontSize: 25,
                              // fontWeight: FontWeight.w500,
                              color: Colors.white),),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: Transform.rotate(
                  angle: animationController!.value * 2 * pi,
                  child:
                  Image.network("${controller.modelList[index].Image}",height: 200,width: 200,)),
            ),
          ],
        ),
      ),
    );
  }
}
