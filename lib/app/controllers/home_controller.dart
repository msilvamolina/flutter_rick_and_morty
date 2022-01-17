import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/app_routes.dart';

class HomeController extends GetxController {
  int code = 448712;

  String _textInput = "";
  bool _isValid = false;
  bool get isValid => _isValid;

  String? _inputValidation;
  String? get inputValidation => _inputValidation;

  void onInputChanged(String text) {
    _textInput = text.trim();
    validateInput();
  }

  void validateInput() {
    if (_textInput.length == 6) {
      try {
        int.parse(_textInput);
        _isValid = true;
        _inputValidation = null;
      } catch (e) {
        _inputValidation = "Sólo números";
        _isValid = false;
      }
    } else {
      _inputValidation = "El código tiene que tener 6 caracteres";
      _isValid = false;
    }
    update(['inputContainer']);
  }

  void onSubmit() {
    if (_isValid) {
      try {
        int _inputCode = int.parse(_textInput);
        if (_inputCode == code) {
          Get.offAndToNamed(AppRoutes.SECOND);
        } else {
          Get.snackbar(
            'Error!',
            "El código ingresado es incorrecto",
            maxWidth: 500,
            margin: EdgeInsets.all(20),
            colorText: Colors.white,
            backgroundColor: Colors.pink[700],
          );
        }
      } catch (e) {
        print(e);
      }
    }
  }
}
