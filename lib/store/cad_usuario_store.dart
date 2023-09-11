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
  final confirmPasswordController = TextEditingController();

  @observable
  bool nameFocused = false;

  @observable
  bool cpfFocused = false;

  @observable
  bool phoneFocused = false;

  @observable
  bool emailFocused = false;

  @observable
  bool passwordFocused = false;

  @observable
  bool confirmPasswordFocused = false;

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
  String? confirmPassword;

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
  bool confirmPasswordTouched = false;

  @observable
  bool cpfExists = false;

  @computed
  String? get nameError =>
      nameTouched && (name?.isEmpty ?? true) ? "Nome é obrigatório!" : null;

  @computed
  String? get cpfError {
    if (cpfTouched && (cpf?.isEmpty ?? true)) return "CPF é obrigatório!";
    if (cpfTouched && !_cpfRegex.hasMatch(cpf!)) return "CPF inválido!";
    if (cpfExists) return "CPF já cadastrado!";
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

  @computed
  String? get confirmPasswordError =>
      confirmPasswordTouched && (confirmPassword?.isEmpty ?? true)
          ? "Confirmação de senha é obrigatória!"
          : confirmPassword != password
              ? "As senhas não coincidem!"
              : null;

  void resetFields() {
    nameController.clear();
    cpfController.clear();
    phoneController.clear();
    emailController.clear();
    passwordController.clear();
    urlPhotoController.clear();
    confirmPasswordController.clear();
    nameTouched = false;
    cpfTouched = false;
    phoneTouched = false;
    emailTouched = false;
    passwordTouched = false;
    confirmPasswordTouched = false;
    cpfExists = false;
  }

  void dispose() {
    nameController.dispose();
    cpfController.dispose();
    phoneController.dispose();
    emailController.dispose();
    passwordController.dispose();
    urlPhotoController.dispose();
    confirmPasswordController.dispose();
  }

  @computed
  bool get isFormValid =>
      nameTouched &&
      cpfTouched &&
      phoneTouched &&
      emailTouched &&
      passwordTouched &&
      confirmPasswordTouched &&
      nameError == null &&
      cpfError == null &&
      phoneError == null &&
      emailError == null &&
      passwordError == null &&
      confirmPasswordError == null;

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
  void setConfirmPassword(String value) {
    confirmPasswordTouched = true;
    confirmPassword = value;
  }

  @action
  void setCpfExists(bool value) {
    cpfExists = value;
  }

  @action
  void setNameFocus(bool value) {
    nameFocused = value;
  }

  @action
  void setCpfFocus(bool value) {
    cpfFocused = value;
  }

  @action
  void setPhoneFocus(bool value) {
    phoneFocused = value;
  }

  @action
  void setEmailFocus(bool value) {
    emailFocused = value;
  }

  @action
  void setPasswordFocus(bool value) {
    passwordFocused = value;
  }

  @action
  void setConfirmPasswordFocus(bool value) {
    confirmPasswordFocused = value;
  }

  @action
  Future<bool> save() async {
    if (!isFormValid) {
      return false;
    }

    var avatar = GetIt.I<AvatarStore>();
    var image = avatar.avatarSelected;
    if (image != null && cpf != null) {
      var aux = cpf?.replaceAll('.', '').replaceAll('-', '');
      await ArquivosServices.saveUserAvatar(image, aux!);
    }

    var user = User();
    user.cpf = cpf?.replaceAll('.', '').replaceAll('-', '');
    user.email = email;
    user.name = name;
    user.password = password;
    user.urlPhoto = (image == null) ? null : '${user.cpf}.jpg';
    user.phone = phone
        ?.replaceAll('(', '')
        .replaceAll(')', '')
        .replaceAll('-', '')
        .replaceAll(' ', '');

    bool res = await UserService.save(user);
    return res;
  }

  _CadUsuarioStoreBase() {
    reaction((_) => cpf, (String? cpf) async {
      if (_cpfRegex.hasMatch(cpf ?? '')) {
        var aux = cpf?.replaceAll('.', '').replaceAll('-', '');
        print("cpf a ser consultado $aux");
        var user = await UserService.getByCpf(aux!);
        setCpfExists(user != null);
      }
    });
  }
  @computed
  Color get nameIconColor {
    if (nameError != null) return Colors.red; // Se tem erro, fica vermelho.

    return Colors.black; // Quando perde o foco.
  }

  @computed
  Color get cpfIconColor {
    if (cpfError != null) return Colors.red; // Se tem erro, fica vermelho.

    return Colors.black; // Quando perde o foco.
  }
}
