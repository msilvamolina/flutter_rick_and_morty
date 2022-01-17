import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          radius: 1.2,
          colors: [
            Colors.indigo[500]!,
            Colors.indigo[900]!,
          ],
        ),
      ),
      padding: const EdgeInsets.all(20),
      child: Center(
        child: Container(
          constraints: BoxConstraints(
            maxWidth: 500,
          ),
          child: GetBuilder<HomeController>(
            id: 'inputContainer',
            builder: (controller) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Rick & Morty App',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Por favor ingresa el código de acceso',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white.withOpacity(0.75),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  TextField(
                      onChanged: controller.onInputChanged,
                      keyboardType: TextInputType.number,
                      decoration: inputDecoration(),
                      style: TextStyle(color: Colors.white)),
                  if (controller.inputValidation != null)
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      width: double.infinity,
                      child: Text(
                        controller.inputValidation!,
                        style: TextStyle(color: Colors.pink[200]),
                      ),
                    ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.pink,
                      ),
                      onPressed:
                          controller.isValid ? controller.onSubmit : null,
                      child: Text('CONTINUAR'),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    ));
  }

  InputDecoration inputDecoration() {
    return InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.pink[300]!),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.pink[300]!),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.pink),
      ),
    );
  }
}
