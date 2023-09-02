import 'dart:io';

import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:modulo_usuario/screen/camera/mac/camera_mac_screen.dart';
import 'package:modulo_usuario/screen/popup/image_picker_dialog.dart';
import 'package:modulo_usuario/store/avatar_store.dart';
import 'package:modulo_usuario/store/cad_usuario_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:modulo_usuario/store/camera_macos_store.dart';
import 'package:modulo_usuario/util/image_assets.dart';

class CadUsuarioScreen extends StatefulWidget {
  const CadUsuarioScreen({Key? key}) : super(key: key);

  @override
  State<CadUsuarioScreen> createState() => _CadUsuarioScreenState();
}

class _CadUsuarioScreenState extends State<CadUsuarioScreen> {
  late CadUsuarioStore store;
  var storeCamera = GetIt.I<CameraMacOsStore>();

  @override
  void initState() {
    super.initState();
    store = GetIt.I<CadUsuarioStore>();
  }

  @override
  void dispose() {
    store.dispose(); // Importante para evitar vazamentos de memória
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cadastro de Usuário')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: <Widget>[
                Observer(builder: (_) {
                  return Tooltip(
                    message: "Clique para adicionar uma imagem",
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        InkWell(
                          onTap: () async {
                            ImagePickerDialog.showOptions(context);
                          },
                          child: Material(
                            elevation: 5.0,
                            shape: CircleBorder(),
                            clipBehavior: Clip.antiAlias,
                            child: CircleAvatar(
                              backgroundImage: avatar(),
                              backgroundColor: Colors.transparent,
                              radius: 80,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
                Observer(
                  builder: (_) => TextFormField(
                    controller: store.nameController,
                    onChanged: (value) => store.setName(value),
                    decoration: InputDecoration(
                      labelText: 'Nome',
                      errorText: store.nameError,
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                ),
                Observer(
                  builder: (_) => TextFormField(
                    controller: store.cpfController,
                    onChanged: (value) => store.setCpf(value),
                    decoration: InputDecoration(
                      labelText: 'CPF',
                      errorText: store.cpfError,
                      prefixIcon: Icon(Icons.badge),
                    ),
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      CpfInputFormatter(),
                    ],
                  ),
                ),
                Observer(
                  builder: (_) => TextFormField(
                    controller: store.phoneController,
                    onChanged: (value) => store.setPhone(value),
                    decoration: InputDecoration(
                      labelText: 'Telefone',
                      errorText: store.phoneError,
                      prefixIcon: Icon(Icons.phone),
                    ),
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      TelefoneInputFormatter(),
                    ],
                  ),
                ),
                Observer(
                  builder: (_) => TextFormField(
                    controller: store.emailController,
                    onChanged: (value) => store.setEmail(value),
                    decoration: InputDecoration(
                      labelText: 'Email',
                      errorText: store.emailError,
                      prefixIcon: Icon(Icons.email),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                Observer(
                  builder: (_) => TextFormField(
                    controller: store.passwordController,
                    onChanged: (value) => store.setPassword(value),
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Senha',
                      errorText: store.passwordError,
                      prefixIcon: Icon(Icons.lock),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Observer(builder: (_) {
                  return Center(
                    child: ElevatedButton(
                      onPressed: store.isFormValid ? store.save : null,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Cadastrar'),
                          SizedBox(
                            width: 8,
                          ),
                          Icon(Icons.save)
                        ],
                      ),
                    ),
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
  /**teste teste teste  */

  ImageProvider avatar() {
    if (Platform.isMacOS) {
      var avtStore = GetIt.I<AvatarStore>();
      var avatar = avtStore.avatarSelected;
      if (avatar != null) {
        return MemoryImage(avatar);
      } else {
        return AssetImage(ImageAssets.person);
      }
    }
    return AssetImage(ImageAssets.person);
  }
}
