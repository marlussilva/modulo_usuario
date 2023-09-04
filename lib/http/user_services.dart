import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:my_api/config/my_config.dart';
import 'package:my_api/model/user.dart';

class UserService {
  static final Dio _dio = Dio();
  static final URL = '${MyConfig.URL_MY_API}/user/';

  static Future<bool> save(User user) async {
    try {
      // Convertendo o objeto Environment para um mapa
      Map<String, dynamic> data = user.toMap();
      // Configurando os headers se necessário (ajuste conforme a necessidade)
      var headers = {
        'Content-Type': 'application/json',
      };

      // Realizando a requisição POST
      var response = await _dio.post(URL,
          data: json.encode(data), options: Options(headers: headers));

      if (response.statusCode == 200) {
        print('User salvo com sucesso!');
        return true;
      } else {
        print('Erro ao salvar Environment: ${response.statusCode}');
        return false;
      }
    } catch (e) {
      print('Ocorreu um erro na requisição: $e');
      return false;
    }
  }
}
