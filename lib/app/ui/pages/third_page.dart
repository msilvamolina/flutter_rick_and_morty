import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/second_controller.dart';
import '../../controllers/third_controller.dart';

import 'widgets/character_card.dart';

class ThirdPage extends GetView<ThirdController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.episode!.name!),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Row(
                          children: [
                            Text(
                              controller.episode!.episode! + ' - ',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              controller.episode!.name!,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        controller.episode!.air_date!,
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        controller.episode!.url!,
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        controller.episode!.created!,
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 18),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Personajes: ",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              if (controller.secondController.mapCharacter != null)
                for (var i = 0;
                    i < controller.episode!.characters!.length;
                    i++) ...[
                  CharacterCard(
                      character: controller.secondController.mapCharacter![
                          getId(controller.episode!.characters![i])]),
                ]
            ],
          ),
        ),
      ),
    );
  }

  String getId(String url) {
    String urlName = 'https://rickandmortyapi.com/api/character/';
    final split = url.split(urlName);
    return split[1].trim();
  }
}
