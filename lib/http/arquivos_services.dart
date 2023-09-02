import 'dart:convert';
import 'dart:typed_data';
import 'package:dio/dio.dart';

class UserServices {
  static final Dio _dio = Dio();
  static const URL = 'http://localhost:8080/user/';

  static Future<bool> saveUserAvatar(
      Uint8List imageBytes, String fileName) async {
    print("dentro 1");
    try {
      // Configurando os headers se necessário (ajuste conforme a necessidade)
      var headers = {
        'Content-Type': 'application/json',
        'file-name': fileName,
      };
      print("dentro 2");
      // Realizando a requisição POST
      var response = await _dio.post(URL + "avatar",
          data: json.encode(imageBytes), options: Options(headers: headers));
      print("dentro 3");
      if (response.statusCode == 200) {
        print('Avatar salvo com sucesso!');
        return true;
      } else {
        print('Erro ao salvar avatar: ${response.statusCode}');
        return false;
      }
    } on DioException catch (e) {
      // Tratando erros específicos do Dio
      if (e.response != null) {
        print('Erro ao salvar avatar: ${e.response!.data}');
      } else {
        print('Erro ao enviar requisição: ${e.message}');
      }
      return false;
    } catch (e) {
      // Tratando outros erros não previstos
      print('Ocorreu um erro inesperado: $e');
      return false;
    }
  }
}
