import 'package:get_it/get_it.dart';

import 'package:modulo_usuario/store/cad_usuario_store.dart';
import 'package:modulo_usuario/store/camera_macos_store.dart';

class Initialization {
  static void singleton() {
    GetIt.I.registerSingleton(CadUsuarioStore());
    GetIt.I.registerSingleton(CameraMacOsStore());
  }
}