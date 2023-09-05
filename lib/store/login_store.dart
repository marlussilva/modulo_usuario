import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:modulo_usuario/http/user_services.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStoreBase with _$LoginStore;

abstract class _LoginStoreBase with Store {
  final TextEditingController cpfController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @observable
  String? cpf;

  @observable
  String? password;

  @observable
  bool cpfTouched = false;

  @observable
  bool passwordTouched = false;

  @computed
  String? get cpfError =>
      cpfTouched && (cpf?.isEmpty ?? true) ? "CPF é obrigatório!" : null;

  @computed
  String? get passwordError => passwordTouched && (password?.isEmpty ?? true)
      ? "Senha é obrigatória!"
      : null;

  @computed
  bool get isFormValid => cpfError == null && passwordError == null;

  @action
  void setCpf(String value) {
    cpfTouched = true;
    cpf = value;
  }

  @action
  void setPassword(String value) {
    passwordTouched = true;
    password = value;
  }

  void resetFields() {
    cpfController.clear();
    passwordController.clear();
  }

  void dispose() {
    cpfController.dispose();
    passwordController.dispose();
  }

  @observable
  bool loading = false;

  @observable
  String? errorMessage;

  @action
  Future<bool> login() async {
    loading = true;
    await Future.delayed(Duration(seconds: 5));
    var cpfAux = cpf?.replaceAll('.', '').replaceAll('-', '');
    final success = await UserService.authenticate(cpfAux!, password!);

    loading = false;

    return success;
  }
}
