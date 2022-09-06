import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nheeng_app/app/data/models/nheenga_model.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Ñe'engApp"),
          centerTitle: true,
          actions: [],
        ),
        body: Column(
          children: [
            cardForData(
              Neenga(
                  message: "No hay vuelta que dar he'i okea muralla ari",
                  tag: "Algo",
                  imageUrl:
                      "https://img2.freepng.es/20180703/fkk/kisspng-bubble-levels-home-tools-5b3b5a5fb1bec6.5027368315306164157281.jpg"),
            ),
            cardForData(
              Neenga(
                  message: "algo es algo he'i ñati'û okuaruo marpe ",
                  tag: "Full hd",
                  imageUrl:
                      "https://img2.freepng.es/20180703/fkk/kisspng-bubble-levels-home-tools-5b3b5a5fb1bec6.5027368315306164157281.jpg"),
            )
          ],
        ));
  }

  Widget cardForData(Neenga neengaData) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 5,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    neengaData.tag,
                    style: const TextStyle(fontSize: 15),
                  ),
                  Wrap(children: [
                    Text(
                      neengaData.message,
                      style: const TextStyle(fontSize: 15),
                    )
                  ])
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(neengaData.imageUrl),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
