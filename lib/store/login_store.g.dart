// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginStore on _LoginStoreBase, Store {
  Computed<String?>? _$cpfErrorComputed;

  @override
  String? get cpfError =>
      (_$cpfErrorComputed ??= Computed<String?>(() => super.cpfError,
              name: '_LoginStoreBase.cpfError'))
          .value;
  Computed<String?>? _$passwordErrorComputed;

  @override
  String? get passwordError =>
      (_$passwordErrorComputed ??= Computed<String?>(() => super.passwordError,
              name: '_LoginStoreBase.passwordError'))
          .value;
  Computed<bool>? _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_LoginStoreBase.isFormValid'))
          .value;

  late final _$cpfAtom = Atom(name: '_LoginStoreBase.cpf', context: context);

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

  late final _$passwordAtom =
      Atom(name: '_LoginStoreBase.password', context: context);

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

  late final _$cpfTouchedAtom =
      Atom(name: '_LoginStoreBase.cpfTouched', context: context);

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

  late final _$passwordTouchedAtom =
      Atom(name: '_LoginStoreBase.passwordTouched', context: context);

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

  late final _$loadingAtom =
      Atom(name: '_LoginStoreBase.loading', context: context);

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  late final _$errorMessageAtom =
      Atom(name: '_LoginStoreBase.errorMessage', context: context);

  @override
  String? get errorMessage {
    _$errorMessageAtom.reportRead();
    return super.errorMessage;
  }

  @override
  set errorMessage(String? value) {
    _$errorMessageAtom.reportWrite(value, super.errorMessage, () {
      super.errorMessage = value;
    });
  }

  late final _$loginAsyncAction =
      AsyncAction('_LoginStoreBase.login', context: context);

  @override
  Future<bool> login() {
    return _$loginAsyncAction.run(() => super.login());
  }

  late final _$_LoginStoreBaseActionController =
      ActionController(name: '_LoginStoreBase', context: context);

  @override
  void setCpf(String value) {
    final _$actionInfo = _$_LoginStoreBaseActionController.startAction(
        name: '_LoginStoreBase.setCpf');
    try {
      return super.setCpf(value);
    } finally {
      _$_LoginStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String value) {
    final _$actionInfo = _$_LoginStoreBaseActionController.startAction(
        name: '_LoginStoreBase.setPassword');
    try {
      return super.setPassword(value);
    } finally {
      _$_LoginStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cpf: ${cpf},
password: ${password},
cpfTouched: ${cpfTouched},
passwordTouched: ${passwordTouched},
loading: ${loading},
errorMessage: ${errorMessage},
cpfError: ${cpfError},
passwordError: ${passwordError},
isFormValid: ${isFormValid}
    ''';
  }
}
