import 'package:mobx/mobx.dart';
import 'package:my_api/client_services/http/dio_organization.dart';
import 'package:my_api/model/organization.dart';

part 'organization_store.g.dart';

class OrganizationStore = _OrganizationStoreBase with _$OrganizationStore;

abstract class _OrganizationStoreBase with Store {
  final RegExp _nameRegex = RegExp(r'^[a-zA-Z\s]+$');
  final RegExp _zipCodeRegex = RegExp(r'^\d{2}\.\d{3}-\d{3}$');

  final RegExp _emailRegex = RegExp(
      r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$'); // Ajustado para uma expressão regular de email mais abrangente

  final RegExp _phoneRegex = RegExp(r'^\(\d{2}\) \d{4,5}-\d{4}$');
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
  String? get nameError => nameTouched && (name == null || name!.isEmpty)
      ? "Nome é obrigatório!"
      : nameTouched && !_nameRegex.hasMatch(name!)
          ? "Nome inválido!"
          : null;

  @computed
  String? get legalNameError =>
      legalNameTouched && (legalName == null || legalName!.isEmpty)
          ? "Nome legal é obrigatório!"
          : null;

  @computed
  String? get taxIdError => taxIdTouched && (taxId == null || taxId!.isEmpty)
      ? "CNPJ é obrigatório!"
      : taxIdTouched && !_taxIdRegex.hasMatch(taxId!)
          ? "CNPJ inválido!"
          : null;

  @computed
  String? get addressError =>
      addressTouched && (address == null || address!.isEmpty)
          ? "Endereço é obrigatório!"
          : null;

  @computed
  String? get cityError => cityTouched && (city == null || city!.isEmpty)
      ? "Cidade é obrigatória!"
      : null;

  @computed
  String? get stateError => stateTouched && (state == null || state!.isEmpty)
      ? "Estado é obrigatório!"
      : null;

  @computed
  String? get zipCodeError {
    if (zipCodeTouched && (zipCode == null || zipCode!.isEmpty)) {
      return "CEP é obrigatório!";
    } else if (zipCodeTouched && !_zipCodeRegex.hasMatch(zipCode!)) {
      return "CEP inválido!";
    }
    return null;
  }

  @computed
  String? get countryError =>
      countryTouched && (country == null || country!.isEmpty)
          ? "País é obrigatório!"
          : null;

  @computed
  String? get phoneNumberError {
    if (phoneNumberTouched && (phoneNumber == null || phoneNumber!.isEmpty)) {
      return "Telefone é obrigatório!";
    } else if (phoneNumberTouched && !_phoneRegex.hasMatch(phoneNumber!)) {
      return "Telefone inválido!";
    }
    return null;
  }

  @computed
  String? get emailError => emailTouched && (email == null || email!.isEmpty)
      ? "Email é obrigatório!"
      : emailTouched && !_emailRegex.hasMatch(email!)
          ? "Email inválido!"
          : null;

  @computed
  String? get websiteError =>
      websiteTouched && (website == null || website!.isEmpty)
          ? "Website é obrigatório!"
          : null;

  @computed
  bool get isFormValid =>
      name != null &&
      name!.isNotEmpty &&
      _nameRegex.hasMatch(name!) &&
      legalName != null &&
      legalName!.isNotEmpty &&
      taxId != null &&
      taxId!.isNotEmpty &&
      _taxIdRegex.hasMatch(taxId!) &&
      address != null &&
      address!.isNotEmpty &&
      city != null &&
      city!.isNotEmpty &&
      state != null &&
      state!.isNotEmpty &&
      zipCode != null &&
      zipCode!.isNotEmpty &&
      _zipCodeRegex.hasMatch(zipCode!) &&
      country != null &&
      country!.isNotEmpty &&
      phoneNumber != null &&
      phoneNumber!.isNotEmpty &&
      _phoneRegex.hasMatch(phoneNumber!) &&
      email != null &&
      email!.isNotEmpty &&
      _emailRegex.hasMatch(email!) &&
      website != null &&
      website!.isNotEmpty;

  @action
  void setName(String value) {
    nameTouched = true;
    name = value;
  }

  @action
  void setLegalName(String value) {
    legalNameTouched = true;
    legalName = value;
  }

  @action
  void setTaxId(String value) {
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
  void setPhoneNumber(String value) {
    phoneNumberTouched = true;
    phoneNumber = value;
  }

  @action
  void setEmail(String value) {
    emailTouched = true;
    email = value;
  }

  @action
  void setWebsite(String value) {
    websiteTouched = true;
    website = value;
  }

  @action
  Future<bool> save() async {
    if (!isFormValid) {
      return false;
    }

    var organization = Organization(
      name: name ?? '',
      legalName: legalName ?? '',
      taxId: taxId ?? '',
      address: address ?? '',
      city: city ?? '',
      state: state ?? '',
      zipCode: zipCode ?? '',
      country: country ?? '',
      phoneNumber: phoneNumber ?? '',
      email: email ?? '',
      website: website ?? '',
    );

    bool res = await DioOrganization.save(organization);
    return res;
  }
}
