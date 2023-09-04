import 'dart:convert';
import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:modulo_usuario/util/utilidades.dart';
import 'package:my_api/config/my_config.dart';

class ArquivosServices {
  static final Dio _dio = Dio();
  static const URL = '${MyConfig.URL_MY_API}/user/';

  static Future<bool> saveUserAvatar(
      Uint8List imageBytes, String fileName) async {
    imageBytes = Utilidades.convertToJpg(imageBytes);
    try {
      var formData = FormData.fromMap({
        'file': MultipartFile.fromBytes(imageBytes, filename: '$fileName.jpg'),
      });

      var urlArquivos = '${MyConfig.URL_SERVER_FILE_IP}/upload/';

      var response = await _dio.post(urlArquivos, data: formData);

      if (response.statusCode == 200) {
        print('Avatar salvo com sucesso!');
        return true;
      } else {
        print('Erro ao salvar avatar: ${response.statusCode}');
        return false;
      }
    } on DioException catch (e) {
      if (e.response != null) {
        print('Erro ao salvar avatar: ${e.response!.data}');
      } else {
        print('Erro ao enviar requisição: ${e.message}');
      }
      return false;
    } catch (e) {
      print('Ocorreu um erro inesperado: $e');
      return false;
    }
  }
}
