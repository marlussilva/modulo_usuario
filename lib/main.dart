import 'package:flutter/material.dart';
import 'package:modulo_usuario/screen/cad_usuario_screen.dart';
import 'package:modulo_usuario/screen/login/login_screen.dart';
import 'package:modulo_usuario/screen/theme/app_theme.dart';
import 'package:modulo_usuario/util/initialization.dart';

void main() {
  Initialization.singleton();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.getTheme(),
      home: LoginScreen(),
    );
  }
}
