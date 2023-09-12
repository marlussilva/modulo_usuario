// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:modulo_usuario/screen/alert/custom_alert.dart';
import 'package:modulo_usuario/store/global_store.dart';
import 'package:modulo_usuario/store/login_store.dart';
import 'package:modulo_usuario/util/image_assets.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
  void Function()? onNotAccout;
  void Function()? onButtonLogin;
  LoginScreen({
    Key? key,
    this.onNotAccout,
    this.onButtonLogin,
  }) : super(key: key);
}

class _LoginScreenState extends State<LoginScreen> {
  var store = GetIt.I<LoginStore>();

  @override
  void dispose() {
    super.dispose();

  }

  @override
  void initState() {
    super.initState();
    store.resetFields();
  }

  Future<void> handleSave(context) async {
    var success = await store.login();
    if (success) {
      if (widget.onButtonLogin != null) {
        var globalStore = GetIt.I<GlobalStore>();
        print(globalStore.user);
        widget.onButtonLogin!();
      }
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Login realizado com sucesso")));
    } else {
      CustomAlert(
              title: "Erro de autenticação",
              message:
                  "Credenciais inválidas. Por favor, verifique e tente novamente.",
              alertType: AlertType.error)
          .show(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Card(
          child: Container(
            margin: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  ImageAssets.inicial,
                  scale: 5,
                ),
                Text(
                  'Bem-vindo!',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20.0),
                Observer(builder: (_) {
                  return TextField(
                    controller: store.cpfController,
                    onChanged: (v) => store.setCpf(v),
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      CpfInputFormatter(),
                    ],
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'CPF',
                      prefixIcon: Icon(Icons.person),
                    ),
                    keyboardType: TextInputType.number,
                  );
                }),
                SizedBox(height: 10.0),
                Observer(builder: (_) {
                  return TextField(
                    onChanged: (v) => store.setPassword(v),
                    controller: store.passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Senha',
                      prefixIcon: Icon(Icons.lock),
                    ),
                    obscureText: true,
                  );
                }),
                SizedBox(height: 20.0),
                Observer(builder: (_) {
                  return ElevatedButton(
                    onPressed: (store.isFormValid && !store.loading)
                        ? () => handleSave(context)
                        : null,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Login'),
                        SizedBox(
                          width: 8,
                        ),
                        store.loading
                            ? SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator())
                            : Icon(Icons.login),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      textStyle: TextStyle(fontSize: 18),
                    ),
                  );
                }),
                SizedBox(height: 10.0),
                TextButton(
                  onPressed: widget.onNotAccout,
                  child: Text(
                    'Não tem uma conta? Cadastre-se',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
