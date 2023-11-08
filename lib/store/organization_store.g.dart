// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$OrganizationStore on _OrganizationStoreBase, Store {
  Computed<String?>? _$nameErrorComputed;

  @override
  String? get nameError =>
      (_$nameErrorComputed ??= Computed<String?>(() => super.nameError,
              name: '_OrganizationStoreBase.nameError'))
          .value;
  Computed<String?>? _$legalNameErrorComputed;

  @override
  String? get legalNameError => (_$legalNameErrorComputed ??= Computed<String?>(
          () => super.legalNameError,
          name: '_OrganizationStoreBase.legalNameError'))
      .value;
  Computed<String?>? _$taxIdErrorComputed;

  @override
  String? get taxIdError =>
      (_$taxIdErrorComputed ??= Computed<String?>(() => super.taxIdError,
              name: '_OrganizationStoreBase.taxIdError'))
          .value;
  Computed<String?>? _$addressErrorComputed;

  @override
  String? get addressError =>
      (_$addressErrorComputed ??= Computed<String?>(() => super.addressError,
              name: '_OrganizationStoreBase.addressError'))
          .value;
  Computed<String?>? _$cityErrorComputed;

  @override
  String? get cityError =>
      (_$cityErrorComputed ??= Computed<String?>(() => super.cityError,
              name: '_OrganizationStoreBase.cityError'))
          .value;
  Computed<String?>? _$stateErrorComputed;

  @override
  String? get stateError =>
      (_$stateErrorComputed ??= Computed<String?>(() => super.stateError,
              name: '_OrganizationStoreBase.stateError'))
          .value;
  Computed<String?>? _$zipCodeErrorComputed;

  @override
  String? get zipCodeError =>
      (_$zipCodeErrorComputed ??= Computed<String?>(() => super.zipCodeError,
              name: '_OrganizationStoreBase.zipCodeError'))
          .value;
  Computed<String?>? _$countryErrorComputed;

  @override
  String? get countryError =>
      (_$countryErrorComputed ??= Computed<String?>(() => super.countryError,
              name: '_OrganizationStoreBase.countryError'))
          .value;
  Computed<String?>? _$phoneNumberErrorComputed;

  @override
  String? get phoneNumberError => (_$phoneNumberErrorComputed ??=
          Computed<String?>(() => super.phoneNumberError,
              name: '_OrganizationStoreBase.phoneNumberError'))
      .value;
  Computed<String?>? _$emailErrorComputed;

  @override
  String? get emailError =>
      (_$emailErrorComputed ??= Computed<String?>(() => super.emailError,
              name: '_OrganizationStoreBase.emailError'))
          .value;
  Computed<String?>? _$websiteErrorComputed;

  @override
  String? get websiteError =>
      (_$websiteErrorComputed ??= Computed<String?>(() => super.websiteError,
              name: '_OrganizationStoreBase.websiteError'))
          .value;
  Computed<bool>? _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_OrganizationStoreBase.isFormValid'))
          .value;

  late final _$nameAtom =
      Atom(name: '_OrganizationStoreBase.name', context: context);

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

  late final _$legalNameAtom =
      Atom(name: '_OrganizationStoreBase.legalName', context: context);

  @override
  String? get legalName {
    _$legalNameAtom.reportRead();
    return super.legalName;
  }

  @override
  set legalName(String? value) {
    _$legalNameAtom.reportWrite(value, super.legalName, () {
      super.legalName = value;
    });
  }

  late final _$taxIdAtom =
      Atom(name: '_OrganizationStoreBase.taxId', context: context);

  @override
  String? get taxId {
    _$taxIdAtom.reportRead();
    return super.taxId;
  }

  @override
  set taxId(String? value) {
    _$taxIdAtom.reportWrite(value, super.taxId, () {
      super.taxId = value;
    });
  }

  late final _$addressAtom =
      Atom(name: '_OrganizationStoreBase.address', context: context);

  @override
  String? get address {
    _$addressAtom.reportRead();
    return super.address;
  }

  @override
  set address(String? value) {
    _$addressAtom.reportWrite(value, super.address, () {
      super.address = value;
    });
  }

  late final _$cityAtom =
      Atom(name: '_OrganizationStoreBase.city', context: context);

  @override
  String? get city {
    _$cityAtom.reportRead();
    return super.city;
  }

  @override
  set city(String? value) {
    _$cityAtom.reportWrite(value, super.city, () {
      super.city = value;
    });
  }

  late final _$stateAtom =
      Atom(name: '_OrganizationStoreBase.state', context: context);

  @override
  String? get state {
    _$stateAtom.reportRead();
    return super.state;
  }

  @override
  set state(String? value) {
    _$stateAtom.reportWrite(value, super.state, () {
      super.state = value;
    });
  }

  late final _$zipCodeAtom =
      Atom(name: '_OrganizationStoreBase.zipCode', context: context);

  @override
  String? get zipCode {
    _$zipCodeAtom.reportRead();
    return super.zipCode;
  }

  @override
  set zipCode(String? value) {
    _$zipCodeAtom.reportWrite(value, super.zipCode, () {
      super.zipCode = value;
    });
  }

  late final _$countryAtom =
      Atom(name: '_OrganizationStoreBase.country', context: context);

  @override
  String? get country {
    _$countryAtom.reportRead();
    return super.country;
  }

  @override
  set country(String? value) {
    _$countryAtom.reportWrite(value, super.country, () {
      super.country = value;
    });
  }

  late final _$phoneNumberAtom =
      Atom(name: '_OrganizationStoreBase.phoneNumber', context: context);

  @override
  String? get phoneNumber {
    _$phoneNumberAtom.reportRead();
    return super.phoneNumber;
  }

  @override
  set phoneNumber(String? value) {
    _$phoneNumberAtom.reportWrite(value, super.phoneNumber, () {
      super.phoneNumber = value;
    });
  }

  late final _$emailAtom =
      Atom(name: '_OrganizationStoreBase.email', context: context);

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

  late final _$websiteAtom =
      Atom(name: '_OrganizationStoreBase.website', context: context);

  @override
  String? get website {
    _$websiteAtom.reportRead();
    return super.website;
  }

  @override
  set website(String? value) {
    _$websiteAtom.reportWrite(value, super.website, () {
      super.website = value;
    });
  }

  late final _$nameTouchedAtom =
      Atom(name: '_OrganizationStoreBase.nameTouched', context: context);

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

  late final _$legalNameTouchedAtom =
      Atom(name: '_OrganizationStoreBase.legalNameTouched', context: context);

  @override
  bool get legalNameTouched {
    _$legalNameTouchedAtom.reportRead();
    return super.legalNameTouched;
  }

  @override
  set legalNameTouched(bool value) {
    _$legalNameTouchedAtom.reportWrite(value, super.legalNameTouched, () {
      super.legalNameTouched = value;
    });
  }

  late final _$taxIdTouchedAtom =
      Atom(name: '_OrganizationStoreBase.taxIdTouched', context: context);

  @override
  bool get taxIdTouched {
    _$taxIdTouchedAtom.reportRead();
    return super.taxIdTouched;
  }

  @override
  set taxIdTouched(bool value) {
    _$taxIdTouchedAtom.reportWrite(value, super.taxIdTouched, () {
      super.taxIdTouched = value;
    });
  }

  late final _$addressTouchedAtom =
      Atom(name: '_OrganizationStoreBase.addressTouched', context: context);

  @override
  bool get addressTouched {
    _$addressTouchedAtom.reportRead();
    return super.addressTouched;
  }

  @override
  set addressTouched(bool value) {
    _$addressTouchedAtom.reportWrite(value, super.addressTouched, () {
      super.addressTouched = value;
    });
  }

  late final _$cityTouchedAtom =
      Atom(name: '_OrganizationStoreBase.cityTouched', context: context);

  @override
  bool get cityTouched {
    _$cityTouchedAtom.reportRead();
    return super.cityTouched;
  }

  @override
  set cityTouched(bool value) {
    _$cityTouchedAtom.reportWrite(value, super.cityTouched, () {
      super.cityTouched = value;
    });
  }

  late final _$stateTouchedAtom =
      Atom(name: '_OrganizationStoreBase.stateTouched', context: context);

  @override
  bool get stateTouched {
    _$stateTouchedAtom.reportRead();
    return super.stateTouched;
  }

  @override
  set stateTouched(bool value) {
    _$stateTouchedAtom.reportWrite(value, super.stateTouched, () {
      super.stateTouched = value;
    });
  }

  late final _$zipCodeTouchedAtom =
      Atom(name: '_OrganizationStoreBase.zipCodeTouched', context: context);

  @override
  bool get zipCodeTouched {
    _$zipCodeTouchedAtom.reportRead();
    return super.zipCodeTouched;
  }

  @override
  set zipCodeTouched(bool value) {
    _$zipCodeTouchedAtom.reportWrite(value, super.zipCodeTouched, () {
      super.zipCodeTouched = value;
    });
  }

  late final _$countryTouchedAtom =
      Atom(name: '_OrganizationStoreBase.countryTouched', context: context);

  @override
  bool get countryTouched {
    _$countryTouchedAtom.reportRead();
    return super.countryTouched;
  }

  @override
  set countryTouched(bool value) {
    _$countryTouchedAtom.reportWrite(value, super.countryTouched, () {
      super.countryTouched = value;
    });
  }

  late final _$phoneNumberTouchedAtom =
      Atom(name: '_OrganizationStoreBase.phoneNumberTouched', context: context);

  @override
  bool get phoneNumberTouched {
    _$phoneNumberTouchedAtom.reportRead();
    return super.phoneNumberTouched;
  }

  @override
  set phoneNumberTouched(bool value) {
    _$phoneNumberTouchedAtom.reportWrite(value, super.phoneNumberTouched, () {
      super.phoneNumberTouched = value;
    });
  }

  late final _$emailTouchedAtom =
      Atom(name: '_OrganizationStoreBase.emailTouched', context: context);

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

  late final _$websiteTouchedAtom =
      Atom(name: '_OrganizationStoreBase.websiteTouched', context: context);

  @override
  bool get websiteTouched {
    _$websiteTouchedAtom.reportRead();
    return super.websiteTouched;
  }

  @override
  set websiteTouched(bool value) {
    _$websiteTouchedAtom.reportWrite(value, super.websiteTouched, () {
      super.websiteTouched = value;
    });
  }

  late final _$saveAsyncAction =
      AsyncAction('_OrganizationStoreBase.save', context: context);

  @override
  Future<bool> save() {
    return _$saveAsyncAction.run(() => super.save());
  }

  late final _$_OrganizationStoreBaseActionController =
      ActionController(name: '_OrganizationStoreBase', context: context);

  @override
  void setName(String value) {
    final _$actionInfo = _$_OrganizationStoreBaseActionController.startAction(
        name: '_OrganizationStoreBase.setName');
    try {
      return super.setName(value);
    } finally {
      _$_OrganizationStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLegalName(String? value) {
    final _$actionInfo = _$_OrganizationStoreBaseActionController.startAction(
        name: '_OrganizationStoreBase.setLegalName');
    try {
      return super.setLegalName(value);
    } finally {
      _$_OrganizationStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setTaxId(String? value) {
    final _$actionInfo = _$_OrganizationStoreBaseActionController.startAction(
        name: '_OrganizationStoreBase.setTaxId');
    try {
      return super.setTaxId(value);
    } finally {
      _$_OrganizationStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAddress(String value) {
    final _$actionInfo = _$_OrganizationStoreBaseActionController.startAction(
        name: '_OrganizationStoreBase.setAddress');
    try {
      return super.setAddress(value);
    } finally {
      _$_OrganizationStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCity(String value) {
    final _$actionInfo = _$_OrganizationStoreBaseActionController.startAction(
        name: '_OrganizationStoreBase.setCity');
    try {
      return super.setCity(value);
    } finally {
      _$_OrganizationStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setState(String value) {
    final _$actionInfo = _$_OrganizationStoreBaseActionController.startAction(
        name: '_OrganizationStoreBase.setState');
    try {
      return super.setState(value);
    } finally {
      _$_OrganizationStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setZipCode(String value) {
    final _$actionInfo = _$_OrganizationStoreBaseActionController.startAction(
        name: '_OrganizationStoreBase.setZipCode');
    try {
      return super.setZipCode(value);
    } finally {
      _$_OrganizationStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCountry(String value) {
    final _$actionInfo = _$_OrganizationStoreBaseActionController.startAction(
        name: '_OrganizationStoreBase.setCountry');
    try {
      return super.setCountry(value);
    } finally {
      _$_OrganizationStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPhoneNumber(String? value) {
    final _$actionInfo = _$_OrganizationStoreBaseActionController.startAction(
        name: '_OrganizationStoreBase.setPhoneNumber');
    try {
      return super.setPhoneNumber(value);
    } finally {
      _$_OrganizationStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String? value) {
    final _$actionInfo = _$_OrganizationStoreBaseActionController.startAction(
        name: '_OrganizationStoreBase.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_OrganizationStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setWebsite(String? value) {
    final _$actionInfo = _$_OrganizationStoreBaseActionController.startAction(
        name: '_OrganizationStoreBase.setWebsite');
    try {
      return super.setWebsite(value);
    } finally {
      _$_OrganizationStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
legalName: ${legalName},
taxId: ${taxId},
address: ${address},
city: ${city},
state: ${state},
zipCode: ${zipCode},
country: ${country},
phoneNumber: ${phoneNumber},
email: ${email},
website: ${website},
nameTouched: ${nameTouched},
legalNameTouched: ${legalNameTouched},
taxIdTouched: ${taxIdTouched},
addressTouched: ${addressTouched},
cityTouched: ${cityTouched},
stateTouched: ${stateTouched},
zipCodeTouched: ${zipCodeTouched},
countryTouched: ${countryTouched},
phoneNumberTouched: ${phoneNumberTouched},
emailTouched: ${emailTouched},
websiteTouched: ${websiteTouched},
nameError: ${nameError},
legalNameError: ${legalNameError},
taxIdError: ${taxIdError},
addressError: ${addressError},
cityError: ${cityError},
stateError: ${stateError},
zipCodeError: ${zipCodeError},
countryError: ${countryError},
phoneNumberError: ${phoneNumberError},
emailError: ${emailError},
websiteError: ${websiteError},
isFormValid: ${isFormValid}
    ''';
  }
}
