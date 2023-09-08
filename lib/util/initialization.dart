import 'package:get_it/get_it.dart';
import 'package:modulo_usuario/store/avatar_store.dart';

import 'package:modulo_usuario/store/cad_usuario_store.dart';
import 'package:modulo_usuario/store/camera_macos_store.dart';
import 'package:modulo_usuario/store/global_store.dart';
import 'package:modulo_usuario/store/login_store.dart';

class InitializationUserModule {
  static void singleton() {
    GetIt.I.registerSingleton(GlobalStore());
    GetIt.I.registerSingleton(AvatarStore());
    GetIt.I.registerSingleton(CadUsuarioStore());
    GetIt.I.registerSingleton(CameraMacOsStore());
    GetIt.I.registerSingleton(LoginStore());
  }
}
