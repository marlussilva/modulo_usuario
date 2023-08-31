import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'cad_usuario_store.g.dart';

class CadUsuarioStore = _CadUsuarioStoreBase with _$CadUsuarioStore;

abstract class _CadUsuarioStoreBase with Store {
  final nameController = TextEditingController();
  final cpfController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final urlPhotoController = TextEditingController();

  @observable
  String? name;

  @observable
  String? cpf;

  @observable
  String? phone;

  @observable
  String? email;

  @observable
  String? password;

  @observable
  String? urlPhoto;

  @observable
  bool nameTouched = false;

  @observable
  bool cpfTouched = false;

  @observable
  bool phoneTouched = false;

  @observable
  bool emailTouched = false;

  @observable
  bool passwordTouched = false;

  @observable
  bool urlPhotoTouched = false;

  @computed
  String? get nameError =>
      nameTouched && (name?.isEmpty ?? true) ? "Nome é obrigatório!" : null;

  @computed
  String? get cpfError =>
      cpfTouched && (cpf?.isEmpty ?? true) ? "CPF é obrigatório!" : null;

  @computed
  String? get phoneError => phoneTouched && (phone?.isEmpty ?? true)
      ? "Telefone é obrigatório!"
      : null;

  @computed
  String? get emailError =>
      emailTouched && (email?.isEmpty ?? true) ? "Email é obrigatório!" : null;

  @computed
  String? get passwordError => passwordTouched && (password?.isEmpty ?? true)
      ? "Senha é obrigatória!"
      : null;

  @computed
  String? get urlPhotoError => urlPhotoTouched && (urlPhoto?.isEmpty ?? true)
      ? "URL da foto é obrigatória!"
      : null;

  void resetFields() {
    nameController.clear();
    cpfController.clear();
    phoneController.clear();
    emailController.clear();
    passwordController.clear();
    urlPhotoController.clear();
  }

  void dispose() {
    nameController.dispose();
    cpfController.dispose();
    phoneController.dispose();
    emailController.dispose();
    passwordController.dispose();
    urlPhotoController.dispose();
  }

  @computed
  bool get isFormValid =>
      nameTouched &&
      cpfTouched &&
      phoneTouched &&
      emailTouched &&
      passwordTouched &&
      urlPhotoTouched &&
      nameError == null &&
      cpfError == null &&
      phoneError == null &&
      emailError == null &&
      passwordError == null &&
      urlPhotoError == null;

  @action
  void setName(String value) {
    nameTouched = true;
    name = value;
  }

  @action
  void setCpf(String value) {
    cpfTouched = true;
    cpf = value;
  }

  @action
  void setPhone(String value) {
    phoneTouched = true;
    phone = value;
  }

  @action
  void setEmail(String value) {
    emailTouched = true;
    email = value;
  }

  @action
  void setPassword(String value) {
    passwordTouched = true;
    password = value;
  }

  @action
  void setUrlPhoto(String value) {
    urlPhotoTouched = true;
    urlPhoto = value;
  }

  @action
  Future<void> register() async {
    if (!isFormValid) {
      // Você pode adicionar uma mensagem geral aqui, se desejar
      return;
    }
    // Processo de registro
  }
}
