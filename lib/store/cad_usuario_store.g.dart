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
  Computed<String?>? _$urlPhotoErrorComputed;

  @override
  String? get urlPhotoError =>
      (_$urlPhotoErrorComputed ??= Computed<String?>(() => super.urlPhotoError,
              name: '_CadUsuarioStoreBase.urlPhotoError'))
          .value;
  Computed<bool>? _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_CadUsuarioStoreBase.isFormValid'))
          .value;

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

  late final _$urlPhotoTouchedAtom =
      Atom(name: '_CadUsuarioStoreBase.urlPhotoTouched', context: context);

  @override
  bool get urlPhotoTouched {
    _$urlPhotoTouchedAtom.reportRead();
    return super.urlPhotoTouched;
  }

  @override
  set urlPhotoTouched(bool value) {
    _$urlPhotoTouchedAtom.reportWrite(value, super.urlPhotoTouched, () {
      super.urlPhotoTouched = value;
    });
  }

  late final _$registerAsyncAction =
      AsyncAction('_CadUsuarioStoreBase.register', context: context);

  @override
  Future<void> register() {
    return _$registerAsyncAction.run(() => super.register());
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
  void setUrlPhoto(String value) {
    final _$actionInfo = _$_CadUsuarioStoreBaseActionController.startAction(
        name: '_CadUsuarioStoreBase.setUrlPhoto');
    try {
      return super.setUrlPhoto(value);
    } finally {
      _$_CadUsuarioStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
cpf: ${cpf},
phone: ${phone},
email: ${email},
password: ${password},
urlPhoto: ${urlPhoto},
nameTouched: ${nameTouched},
cpfTouched: ${cpfTouched},
phoneTouched: ${phoneTouched},
emailTouched: ${emailTouched},
passwordTouched: ${passwordTouched},
urlPhotoTouched: ${urlPhotoTouched},
nameError: ${nameError},
cpfError: ${cpfError},
phoneError: ${phoneError},
emailError: ${emailError},
passwordError: ${passwordError},
urlPhotoError: ${urlPhotoError},
isFormValid: ${isFormValid}
    ''';
  }
}
