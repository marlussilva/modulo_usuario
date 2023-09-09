// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cad_usuario_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CadUsuarioStore on _CadUsuarioStoreBase, Store {
  Computed<String?>? _$nameErrorComputed;

  @override
  String? get nameError =>
      (_$nameErrorComputed ??= Computed<String?>(() => super.nameError,
              name: '_CadUsuarioStoreBase.nameError'))
          .value;
  Computed<String?>? _$cpfErrorComputed;

  @override
  String? get cpfError =>
      (_$cpfErrorComputed ??= Computed<String?>(() => super.cpfError,
              name: '_CadUsuarioStoreBase.cpfError'))
          .value;
  Computed<String?>? _$phoneErrorComputed;

  @override
  String? get phoneError =>
      (_$phoneErrorComputed ??= Computed<String?>(() => super.phoneError,
              name: '_CadUsuarioStoreBase.phoneError'))
          .value;
  Computed<String?>? _$emailErrorComputed;

  @override
  String? get emailError =>
      (_$emailErrorComputed ??= Computed<String?>(() => super.emailError,
              name: '_CadUsuarioStoreBase.emailError'))
          .value;
  Computed<String?>? _$passwordErrorComputed;

  @override
  String? get passwordError =>
      (_$passwordErrorComputed ??= Computed<String?>(() => super.passwordError,
              name: '_CadUsuarioStoreBase.passwordError'))
          .value;
  Computed<String?>? _$confirmPasswordErrorComputed;

  @override
  String? get confirmPasswordError => (_$confirmPasswordErrorComputed ??=
          Computed<String?>(() => super.confirmPasswordError,
              name: '_CadUsuarioStoreBase.confirmPasswordError'))
      .value;
  Computed<bool>? _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_CadUsuarioStoreBase.isFormValid'))
          .value;
  Computed<Color>? _$nameIconColorComputed;

  @override
  Color get nameIconColor =>
      (_$nameIconColorComputed ??= Computed<Color>(() => super.nameIconColor,
              name: '_CadUsuarioStoreBase.nameIconColor'))
          .value;
  Computed<Color>? _$cpfIconColorComputed;

  @override
  Color get cpfIconColor =>
      (_$cpfIconColorComputed ??= Computed<Color>(() => super.cpfIconColor,
              name: '_CadUsuarioStoreBase.cpfIconColor'))
          .value;

  late final _$nameFocusedAtom =
      Atom(name: '_CadUsuarioStoreBase.nameFocused', context: context);

  @override
  bool get nameFocused {
    _$nameFocusedAtom.reportRead();
    return super.nameFocused;
  }

  @override
  set nameFocused(bool value) {
    _$nameFocusedAtom.reportWrite(value, super.nameFocused, () {
      super.nameFocused = value;
    });
  }

  late final _$cpfFocusedAtom =
      Atom(name: '_CadUsuarioStoreBase.cpfFocused', context: context);

  @override
  bool get cpfFocused {
    _$cpfFocusedAtom.reportRead();
    return super.cpfFocused;
  }

  @override
  set cpfFocused(bool value) {
    _$cpfFocusedAtom.reportWrite(value, super.cpfFocused, () {
      super.cpfFocused = value;
    });
  }

  late final _$phoneFocusedAtom =
      Atom(name: '_CadUsuarioStoreBase.phoneFocused', context: context);

  @override
  bool get phoneFocused {
    _$phoneFocusedAtom.reportRead();
    return super.phoneFocused;
  }

  @override
  set phoneFocused(bool value) {
    _$phoneFocusedAtom.reportWrite(value, super.phoneFocused, () {
      super.phoneFocused = value;
    });
  }

  late final _$emailFocusedAtom =
      Atom(name: '_CadUsuarioStoreBase.emailFocused', context: context);

  @override
  bool get emailFocused {
    _$emailFocusedAtom.reportRead();
    return super.emailFocused;
  }

  @override
  set emailFocused(bool value) {
    _$emailFocusedAtom.reportWrite(value, super.emailFocused, () {
      super.emailFocused = value;
    });
  }

  late final _$passwordFocusedAtom =
      Atom(name: '_CadUsuarioStoreBase.passwordFocused', context: context);

  @override
  bool get passwordFocused {
    _$passwordFocusedAtom.reportRead();
    return super.passwordFocused;
  }

  @override
  set passwordFocused(bool value) {
    _$passwordFocusedAtom.reportWrite(value, super.passwordFocused, () {
      super.passwordFocused = value;
    });
  }

  late final _$confirmPasswordFocusedAtom = Atom(
      name: '_CadUsuarioStoreBase.confirmPasswordFocused', context: context);

  @override
  bool get confirmPasswordFocused {
    _$confirmPasswordFocusedAtom.reportRead();
    return super.confirmPasswordFocused;
  }

  @override
  set confirmPasswordFocused(bool value) {
    _$confirmPasswordFocusedAtom
        .reportWrite(value, super.confirmPasswordFocused, () {
      super.confirmPasswordFocused = value;
    });
  }

  late final _$nameAtom =
      Atom(name: '_CadUsuarioStoreBase.name', context: context);

  @override
  String? get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String? value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  late final _$cpfAtom =
      Atom(name: '_CadUsuarioStoreBase.cpf', context: context);

  @override
  String? get cpf {
    _$cpfAtom.reportRead();
    return super.cpf;
  }

  @override
  set cpf(String? value) {
    _$cpfAtom.reportWrite(value, super.cpf, () {
      super.cpf = value;
    });
  }

  late final _$phoneAtom =
      Atom(name: '_CadUsuarioStoreBase.phone', context: context);

  @override
  String? get phone {
    _$phoneAtom.reportRead();
    return super.phone;
  }

  @override
  set phone(String? value) {
    _$phoneAtom.reportWrite(value, super.phone, () {
      super.phone = value;
    });
  }

  late final _$emailAtom =
      Atom(name: '_CadUsuarioStoreBase.email', context: context);

  @override
  String? get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String? value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$passwordAtom =
      Atom(name: '_CadUsuarioStoreBase.password', context: context);

  @override
  String? get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String? value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  late final _$urlPhotoAtom =
      Atom(name: '_CadUsuarioStoreBase.urlPhoto', context: context);

  @override
  String? get urlPhoto {
    _$urlPhotoAtom.reportRead();
    return super.urlPhoto;
  }

  @override
  set urlPhoto(String? value) {
    _$urlPhotoAtom.reportWrite(value, super.urlPhoto, () {
      super.urlPhoto = value;
    });
  }

  late final _$confirmPasswordAtom =
      Atom(name: '_CadUsuarioStoreBase.confirmPassword', context: context);

  @override
  String? get confirmPassword {
    _$confirmPasswordAtom.reportRead();
    return super.confirmPassword;
  }

  @override
  set confirmPassword(String? value) {
    _$confirmPasswordAtom.reportWrite(value, super.confirmPassword, () {
      super.confirmPassword = value;
    });
  }

  late final _$nameTouchedAtom =
      Atom(name: '_CadUsuarioStoreBase.nameTouched', context: context);

  @override
  bool get nameTouched {
    _$nameTouchedAtom.reportRead();
    return super.nameTouched;
  }

  @override
  set nameTouched(bool value) {
    _$nameTouchedAtom.reportWrite(value, super.nameTouched, () {
      super.nameTouched = value;
    });
  }

  late final _$cpfTouchedAtom =
      Atom(name: '_CadUsuarioStoreBase.cpfTouched', context: context);

  @override
  bool get cpfTouched {
    _$cpfTouchedAtom.reportRead();
    return super.cpfTouched;
  }

  @override
  set cpfTouched(bool value) {
    _$cpfTouchedAtom.reportWrite(value, super.cpfTouched, () {
      super.cpfTouched = value;
    });
  }

  late final _$phoneTouchedAtom =
      Atom(name: '_CadUsuarioStoreBase.phoneTouched', context: context);

  @override
  bool get phoneTouched {
    _$phoneTouchedAtom.reportRead();
    return super.phoneTouched;
  }

  @override
  set phoneTouched(bool value) {
    _$phoneTouchedAtom.reportWrite(value, super.phoneTouched, () {
      super.phoneTouched = value;
    });
  }

  late final _$emailTouchedAtom =
      Atom(name: '_CadUsuarioStoreBase.emailTouched', context: context);

  @override
  bool get emailTouched {
    _$emailTouchedAtom.reportRead();
    return super.emailTouched;
  }

  @override
  set emailTouched(bool value) {
    _$emailTouchedAtom.reportWrite(value, super.emailTouched, () {
      super.emailTouched = value;
    });
  }

  late final _$passwordTouchedAtom =
      Atom(name: '_CadUsuarioStoreBase.passwordTouched', context: context);

  @override
  bool get passwordTouched {
    _$passwordTouchedAtom.reportRead();
    return super.passwordTouched;
  }

  @override
  set passwordTouched(bool value) {
    _$passwordTouchedAtom.reportWrite(value, super.passwordTouched, () {
      super.passwordTouched = value;
    });
  }

  late final _$confirmPasswordTouchedAtom = Atom(
      name: '_CadUsuarioStoreBase.confirmPasswordTouched', context: context);

  @override
  bool get confirmPasswordTouched {
    _$confirmPasswordTouchedAtom.reportRead();
    return super.confirmPasswordTouched;
  }

  @override
  set confirmPasswordTouched(bool value) {
    _$confirmPasswordTouchedAtom
        .reportWrite(value, super.confirmPasswordTouched, () {
      super.confirmPasswordTouched = value;
    });
  }

  late final _$cpfExistsAtom =
      Atom(name: '_CadUsuarioStoreBase.cpfExists', context: context);

  @override
  bool get cpfExists {
    _$cpfExistsAtom.reportRead();
    return super.cpfExists;
  }

  @override
  set cpfExists(bool value) {
    _$cpfExistsAtom.reportWrite(value, super.cpfExists, () {
      super.cpfExists = value;
    });
  }

  late final _$saveAsyncAction =
      AsyncAction('_CadUsuarioStoreBase.save', context: context);

  @override
  Future<bool> save() {
    return _$saveAsyncAction.run(() => super.save());
  }

  late final _$_CadUsuarioStoreBaseActionController =
      ActionController(name: '_CadUsuarioStoreBase', context: context);

  @override
  void setName(String value) {
    final _$actionInfo = _$_CadUsuarioStoreBaseActionController.startAction(
        name: '_CadUsuarioStoreBase.setName');
    try {
      return super.setName(value);
    } finally {
      _$_CadUsuarioStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCpf(String value) {
    final _$actionInfo = _$_CadUsuarioStoreBaseActionController.startAction(
        name: '_CadUsuarioStoreBase.setCpf');
    try {
      return super.setCpf(value);
    } finally {
      _$_CadUsuarioStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPhone(String value) {
    final _$actionInfo = _$_CadUsuarioStoreBaseActionController.startAction(
        name: '_CadUsuarioStoreBase.setPhone');
    try {
      return super.setPhone(value);
    } finally {
      _$_CadUsuarioStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String value) {
    final _$actionInfo = _$_CadUsuarioStoreBaseActionController.startAction(
        name: '_CadUsuarioStoreBase.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_CadUsuarioStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String value) {
    final _$actionInfo = _$_CadUsuarioStoreBaseActionController.startAction(
        name: '_CadUsuarioStoreBase.setPassword');
    try {
      return super.setPassword(value);
    } finally {
      _$_CadUsuarioStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setConfirmPassword(String value) {
    final _$actionInfo = _$_CadUsuarioStoreBaseActionController.startAction(
        name: '_CadUsuarioStoreBase.setConfirmPassword');
    try {
      return super.setConfirmPassword(value);
    } finally {
      _$_CadUsuarioStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCpfExists(bool value) {
    final _$actionInfo = _$_CadUsuarioStoreBaseActionController.startAction(
        name: '_CadUsuarioStoreBase.setCpfExists');
    try {
      return super.setCpfExists(value);
    } finally {
      _$_CadUsuarioStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setNameFocus(bool value) {
    final _$actionInfo = _$_CadUsuarioStoreBaseActionController.startAction(
        name: '_CadUsuarioStoreBase.setNameFocus');
    try {
      return super.setNameFocus(value);
    } finally {
      _$_CadUsuarioStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCpfFocus(bool value) {
    final _$actionInfo = _$_CadUsuarioStoreBaseActionController.startAction(
        name: '_CadUsuarioStoreBase.setCpfFocus');
    try {
      return super.setCpfFocus(value);
    } finally {
      _$_CadUsuarioStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPhoneFocus(bool value) {
    final _$actionInfo = _$_CadUsuarioStoreBaseActionController.startAction(
        name: '_CadUsuarioStoreBase.setPhoneFocus');
    try {
      return super.setPhoneFocus(value);
    } finally {
      _$_CadUsuarioStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmailFocus(bool value) {
    final _$actionInfo = _$_CadUsuarioStoreBaseActionController.startAction(
        name: '_CadUsuarioStoreBase.setEmailFocus');
    try {
      return super.setEmailFocus(value);
    } finally {
      _$_CadUsuarioStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPasswordFocus(bool value) {
    final _$actionInfo = _$_CadUsuarioStoreBaseActionController.startAction(
        name: '_CadUsuarioStoreBase.setPasswordFocus');
    try {
      return super.setPasswordFocus(value);
    } finally {
      _$_CadUsuarioStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setConfirmPasswordFocus(bool value) {
    final _$actionInfo = _$_CadUsuarioStoreBaseActionController.startAction(
        name: '_CadUsuarioStoreBase.setConfirmPasswordFocus');
    try {
      return super.setConfirmPasswordFocus(value);
    } finally {
      _$_CadUsuarioStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
nameFocused: ${nameFocused},
cpfFocused: ${cpfFocused},
phoneFocused: ${phoneFocused},
emailFocused: ${emailFocused},
passwordFocused: ${passwordFocused},
confirmPasswordFocused: ${confirmPasswordFocused},
name: ${name},
cpf: ${cpf},
phone: ${phone},
email: ${email},
password: ${password},
urlPhoto: ${urlPhoto},
confirmPassword: ${confirmPassword},
nameTouched: ${nameTouched},
cpfTouched: ${cpfTouched},
phoneTouched: ${phoneTouched},
emailTouched: ${emailTouched},
passwordTouched: ${passwordTouched},
confirmPasswordTouched: ${confirmPasswordTouched},
cpfExists: ${cpfExists},
nameError: ${nameError},
cpfError: ${cpfError},
phoneError: ${phoneError},
emailError: ${emailError},
passwordError: ${passwordError},
confirmPasswordError: ${confirmPasswordError},
isFormValid: ${isFormValid},
nameIconColor: ${nameIconColor},
cpfIconColor: ${cpfIconColor}
    ''';
  }
}
