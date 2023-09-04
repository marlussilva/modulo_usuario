import 'dart:typed_data';

import 'package:image/image.dart';

class Utilidades {
  static Uint8List convertToJpg(Uint8List input) {
    // Decodifica a imagem para o formato Image
    Image? image = decodeImage(input);

    // Converte a imagem para JPG
    if (image != null) {
      return encodeJpg(image);
    } else {
      throw Exception('Failed to decode image');
    }
  }
}
