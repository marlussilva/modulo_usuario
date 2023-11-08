import 'package:flutter/material.dart';
import 'package:modulo_usuario/http/user_services.dart';
import 'package:modulo_usuario/screen/organizacao/organization_form_screen.dart';
import 'package:modulo_usuario/screen/usuario/cad_usuario_screen.dart';
import 'package:modulo_usuario/screen/login/login_screen.dart';
import 'package:modulo_usuario/screen/theme/app_theme.dart';
import 'package:modulo_usuario/util/initialization.dart';

void main() {
  InitializationUserModule.singleton();
  teste();
  //runApp(const MyApp());
}

Future<void> teste() async {
  var res = await UserService.authenticate("01706541171", "123456");
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.getTheme(),
      home: OrganizationFormScreen(),
    );
  }
}
