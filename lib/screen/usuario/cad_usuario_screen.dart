import 'dart:io';

import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:modulo_usuario/screen/alert/custom_alert.dart';

import 'package:modulo_usuario/screen/popup/image_picker_dialog.dart';
import 'package:modulo_usuario/store/avatar_store.dart';
import 'package:modulo_usuario/store/cad_usuario_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:modulo_usuario/store/camera_macos_store.dart';
import 'package:modulo_usuario/store/global_store.dart';

import 'package:modulo_usuario/util/image_assets.dart';

class CadUsuarioScreen extends StatefulWidget {
  CadUsuarioScreen({Key? key, this.onSave, this.onBack}) : super(key: key);
  final void Function()? onSave;
  final void Function()? onBack;

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
    super.dispose();
    //store.dispose(); // Importante para evitar vazamentos de memória
  }

  Future<void> _handleSave(BuildContext context) async {
    bool success = await store.save();
    var avatar = GetIt.I<AvatarStore>();
    if (success) {
      store.resetFields();
      avatar.setAvatarSeletected(null);

      var storeGlobal = GetIt.I<GlobalStore>();
      print(storeGlobal.user);

      CustomAlert(
              title: "Cadastro",
              message: "Registro de ${storeGlobal.user?.name} completo!",
              alertType: AlertType.success)
          .show(context);
      if (widget.onSave != null) {
        widget.onSave!();
      }
    } else {
      CustomAlert(
              title: "Erro",
              message: "Houve um problema ao tentar cadastrar um novo usuário!",
              alertType: AlertType.error)
          .show(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var mobile = (width < 600);
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Usuário'),
        backgroundColor: Colors.blue,
        leading: (mobile)
            ? null
            : IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: widget.onBack,
              ),
      ),
      body: Card(
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
                            radius: 50,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
              SizedBox(
                height: 8,
              ),
              Observer(
                builder: (_) => TextField(
                  controller: store.nameController,
                  onChanged: (value) => store.setName(value),
                  decoration: InputDecoration(
                    labelText: 'Nome',
                    errorText: store.nameError,
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Observer(
                builder: (_) => TextField(
                  controller: store.cpfController,
                  onChanged: (value) => store.setCpf(value),
                  decoration: InputDecoration(
                    labelText: 'CPF',
                    errorText: store.cpfError,
                  ),
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    CpfInputFormatter(),
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Observer(
                builder: (_) => TextField(
                  controller: store.phoneController,
                  onChanged: (value) => store.setPhone(value),
                  decoration: InputDecoration(
                    labelText: 'Telefone',
                    errorText: store.phoneError,
                  ),
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    TelefoneInputFormatter(),
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Observer(
                builder: (_) => TextField(
                  controller: store.emailController,
                  onChanged: (value) => store.setEmail(value),
                  decoration: InputDecoration(
                    labelText: 'Email',
                    errorText: store.emailError,
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Observer(
                builder: (_) => TextField(
                  controller: store.passwordController,
                  onChanged: (value) => store.setPassword(value),
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    errorText: store.passwordError,
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Observer(
                builder: (_) => TextField(
                  controller: store.confirmPasswordController,
                  onChanged: (value) => store.setConfirmPassword(value),
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Confirmação de senha',
                    errorText: store.confirmPasswordError,
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Observer(builder: (_) {
                return Center(
                  child: ElevatedButton(
                    onPressed:
                        store.isFormValid ? () => _handleSave(context) : null,
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
