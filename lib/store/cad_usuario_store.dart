import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:modulo_usuario/http/arquivos_services.dart';
import 'package:modulo_usuario/http/user_services.dart';
import 'package:modulo_usuario/store/avatar_store.dart';
import 'package:my_api/model/user.dart';
part 'cad_usuario_store.g.dart';

class CadUsuarioStore = _CadUsuarioStoreBase with _$CadUsuarioStore;

abstract class _CadUsuarioStoreBase with Store {
  final nameController = TextEditingController();
  final cpfController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final urlPhotoController = TextEditingController();

  // Expressões regulares
  final _cpfRegex = RegExp(r"^\d{3}\.\d{3}\.\d{3}-\d{2}$");
  final _phoneRegex =
      RegExp(r"^\(\d{2}\) \d{5}-\d{4}$"); // Formato (XX) XXXXX-XXXX
  final _emailRegex =
      RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$");

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

  @computed
  String? get nameError =>
      nameTouched && (name?.isEmpty ?? true) ? "Nome é obrigatório!" : null;

  @computed
  String? get cpfError {
    if (cpfTouched && (cpf?.isEmpty ?? true)) return "CPF é obrigatório!";
    if (cpfTouched && !_cpfRegex.hasMatch(cpf!)) return "CPF inválido!";
    return null;
  }

  @computed
  String? get phoneError {
    if (phoneTouched && (phone?.isEmpty ?? true))
      return "Telefone é obrigatório!";
    if (phoneTouched && !_phoneRegex.hasMatch(phone!))
      return "Telefone inválido!";
    return null;
  }

  @computed
  String? get emailError {
    if (emailTouched && (email?.isEmpty ?? true)) return "Email é obrigatório!";
    if (emailTouched && !_emailRegex.hasMatch(email!))
      return "Formato de e-mail inválido!";
    return null;
  }

  @computed
  String? get passwordError => passwordTouched && (password?.isEmpty ?? true)
      ? "Senha é obrigatória!"
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
      nameError == null &&
      cpfError == null &&
      phoneError == null &&
      emailError == null &&
      passwordError == null;

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
  Future<bool> save() async {
    if (!isFormValid) {
      // Você pode adicionar uma mensagem geral aqui, se desejar
      return false;
    }
    // Processo de registro
    var avatar = GetIt.I<AvatarStore>();
    var image = avatar.avatarSelected;
    if (image != null && cpf != null) {
      await ArquivosServices.saveUserAvatar(image, cpf!);
    }
    var user = User();
    user.cpf = cpf;
    user.email = email;
    user.name = name;
    user.password = password;
    user.urlPhoto = '$cpf.jpg';
    user.phone = phone;
    bool res = await UserService.save(user);
    return res;
  }
}
