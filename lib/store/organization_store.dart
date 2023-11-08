// organization_store.dart

import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:my_api/client_services/http/dio_organization.dart';
import 'package:my_api/model/organization.dart';

part 'organization_store.g.dart';

class OrganizationStore = _OrganizationStoreBase with _$OrganizationStore;

abstract class _OrganizationStoreBase with Store {
  final nameController = TextEditingController();
  final legalNameController = TextEditingController();
  final taxIdController = TextEditingController();
  final addressController = TextEditingController();
  final cityController = TextEditingController();
  final stateController = TextEditingController();
  final zipCodeController = TextEditingController();
  final countryController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final emailController = TextEditingController();
  final websiteController = TextEditingController();

  final RegExp _nameRegex = RegExp(r'^[a-zA-Z\s]+$');
  final RegExp _zipCodeRegex = RegExp(r'^\d{5}-\d{3}$');
  final RegExp _emailRegex = RegExp(r'^\S+@\S+\.\S+$');
  final RegExp _phoneRegex = RegExp(r'^\(\d{2}\)\d{4,5}-\d{4}$');
  final RegExp _taxIdRegex = RegExp(r'^\d{2}\.\d{3}\.\d{3}/\d{4}-\d{2}$');

  @observable
  String? name;

  @observable
  String? legalName;

  @observable
  String? taxId;

  @observable
  String? address;

  @observable
  String? city;

  @observable
  String? state;

  @observable
  String? zipCode;

  @observable
  String? country;

  @observable
  String? phoneNumber;

  @observable
  String? email;

  @observable
  String? website;

  @observable
  bool nameTouched = false;

  @observable
  bool legalNameTouched = false;

  @observable
  bool taxIdTouched = false;

  @observable
  bool addressTouched = false;

  @observable
  bool cityTouched = false;

  @observable
  bool stateTouched = false;

  @observable
  bool zipCodeTouched = false;

  @observable
  bool countryTouched = false;

  @observable
  bool phoneNumberTouched = false;

  @observable
  bool emailTouched = false;

  @observable
  bool websiteTouched = false;

  @computed
  String? get nameError =>
      nameTouched && !_nameRegex.hasMatch(name ?? '') ? "Nome inválido!" : null;

  @computed
  String? get legalNameError => legalNameTouched && (legalName?.isEmpty ?? true)
      ? "Nome legal é obrigatório!"
      : null;

  @computed
  String? get taxIdError => taxIdTouched && !_taxIdRegex.hasMatch(taxId ?? '')
      ? "CNPJ inválido!"
      : null;

  @computed
  String? get addressError => addressTouched && (address?.isEmpty ?? true)
      ? "Endereço é obrigatório!"
      : null;

  @computed
  String? get cityError =>
      cityTouched && (city?.isEmpty ?? true) ? "Cidade é obrigatória!" : null;

  @computed
  String? get stateError =>
      stateTouched && (state?.isEmpty ?? true) ? "Estado é obrigatório!" : null;

  @computed
  String? get zipCodeError {
    if (zipCodeTouched && (zipCode?.isEmpty ?? true))
      return "CEP é obrigatório!";
    if (zipCodeTouched && !_zipCodeRegex.hasMatch(zipCode!))
      return "CEP inválido!";
    return null;
  }

  @computed
  String? get countryError => countryTouched && (country?.isEmpty ?? true)
      ? "País é obrigatório!"
      : null;

  @computed
  String? get phoneNumberError {
    if (phoneNumberTouched &&
        phoneNumber != null &&
        UtilBrasilFields.obterTelefone(phoneNumber!, mascara: false).length !=
            10) return "Número de telefone inválido!";
    return null;
  }

  @computed
  String? get emailError {
    if (emailTouched && !_emailRegex.hasMatch(email ?? ''))
      return "Email inválido!";
    return null;
  }

  @computed
  String? get websiteError => websiteTouched && (website?.isEmpty ?? true)
      ? "Website é obrigatório!"
      : null;

  @computed
  bool get isFormValid =>
      nameError == null &&
      legalNameError == null &&
      taxIdError == null &&
      addressError == null &&
      cityError == null &&
      stateError == null &&
      zipCodeError == null &&
      countryError == null &&
      phoneNumberError == null &&
      emailError == null &&
      websiteError == null;

  @action
  void setName(String value) {
    nameTouched = true;
    name = value;
  }

  @action
  void setLegalName(String? value) {
    legalNameTouched = true;
    legalName = value;
  }

  @action
  void setTaxId(String? value) {
    taxIdTouched = true;
    taxId = value;
  }

  @action
  void setAddress(String value) {
    addressTouched = true;
    address = value;
  }

  @action
  void setCity(String value) {
    cityTouched = true;
    city = value;
  }

  @action
  void setState(String value) {
    stateTouched = true;
    state = value;
  }

  @action
  void setZipCode(String value) {
    zipCodeTouched = true;
    zipCode = value;
  }

  @action
  void setCountry(String value) {
    countryTouched = true;
    country = value;
  }

  @action
  void setPhoneNumber(String? value) {
    phoneNumberTouched = true;
    phoneNumber = value;
  }

  @action
  void setEmail(String? value) {
    emailTouched = true;
    email = value;
  }

  @action
  void setWebsite(String? value) {
    websiteTouched = true;
    website = value;
  }

  @action
  Future<bool> save() async {
    if (!isFormValid) {
      return false;
    }
    /*var organization = Organization(
      name: name,
      legalName: legalName,
      taxId: taxId,
      address: address,
      city: city,
      state: state,
      zipCode: zipCode,
      country: country,
      phoneNumber: phoneNumber,
      email: email,
      website: website,
    );

    bool res = await DioOrganization.save(organization);
    return res;*/
    return true;
  }
}
