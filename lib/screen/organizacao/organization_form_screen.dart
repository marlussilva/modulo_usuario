// importações necessárias
import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:modulo_usuario/store/organization_store.dart';

class OrganizationFormScreen extends StatelessWidget {
  final OrganizationStore store = GetIt.I<OrganizationStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Empresa ou Instituição'),
      ),
      body: Card(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 16.0),
                child: Icon(
                  Icons.business_center,
                  size: 100, // Tamanho do ícone
                  color: Colors.black, // Cor do ícone
                ),
              ),
              Observer(
                builder: (_) => TextField(
                  onChanged: store.setName,
                  decoration: InputDecoration(
                    labelText: 'Nome',
                    errorText: store.nameError,
                    prefixIcon: Icon(Icons.business),
                  ),
                ),
              ),
              Observer(
                builder: (_) => TextField(
                  onChanged: store.setLegalName,
                  decoration: InputDecoration(
                    labelText: 'Razão Social',
                    errorText: store.legalNameError,
                    prefixIcon: Icon(Icons.account_balance),
                  ),
                ),
              ),
              Observer(
                builder: (_) => TextField(
                  onChanged: store.setTaxId,
                  decoration: InputDecoration(
                    labelText: 'CNPJ',
                    errorText: store.taxIdError,
                    prefixIcon: Icon(Icons.fingerprint),
                  ),
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    CnpjInputFormatter(),
                  ],
                ),
              ),
              Observer(
                builder: (_) => TextField(
                  onChanged: store.setAddress,
                  decoration: InputDecoration(
                    labelText: 'Endereço',
                    errorText: store.addressError,
                    prefixIcon: Icon(Icons.location_on),
                  ),
                ),
              ),
              Observer(
                builder: (_) => TextField(
                  onChanged: store.setCity,
                  decoration: InputDecoration(
                    labelText: 'Cidade',
                    errorText: store.cityError,
                    prefixIcon: Icon(Icons.location_city),
                  ),
                ),
              ),
              Observer(
                builder: (_) => TextField(
                  onChanged: store.setState,
                  decoration: InputDecoration(
                    labelText: 'Estado',
                    errorText: store.stateError,
                    prefixIcon: Icon(Icons.map),
                  ),
                ),
              ),
              Observer(
                builder: (_) => TextField(
                  onChanged: store.setZipCode,
                  decoration: InputDecoration(
                    labelText: 'CEP',
                    errorText: store.zipCodeError,
                    prefixIcon: Icon(Icons.local_post_office),
                  ),
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    CepInputFormatter(),
                  ],
                ),
              ),
              Observer(
                builder: (_) => TextField(
                  onChanged: store.setCountry,
                  decoration: InputDecoration(
                    labelText: 'País',
                    errorText: store.countryError,
                    prefixIcon: Icon(Icons.flag),
                  ),
                ),
              ),
              Observer(
                builder: (_) => TextField(
                  onChanged: store.setPhoneNumber,
                  decoration: InputDecoration(
                    labelText: 'Telefone',
                    errorText: store.phoneNumberError,
                    prefixIcon: Icon(Icons.phone),
                  ),
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    TelefoneInputFormatter(),
                  ],
                ),
              ),
              Observer(
                builder: (_) => TextField(
                  onChanged: store.setEmail,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    errorText: store.emailError,
                    prefixIcon: Icon(Icons.email),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              Observer(
                builder: (_) => TextField(
                  onChanged: store.setWebsite,
                  decoration: InputDecoration(
                    labelText: 'Website',
                    errorText: store.websiteError,
                    prefixIcon: Icon(Icons.web),
                  ),
                  keyboardType: TextInputType.url,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              ElevatedButton.icon(
                icon: Icon(Icons.save),
                label: Text('Salvar'),
                onPressed: _onSave,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onSave() async {
    if (await store.save()) {
      // Show success message or navigate away
      /*ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Dados salvos com sucesso!'),
          backgroundColor: Colors.green,
        ),
      );*/
    } else {
      // Show error message
      /* ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Erro ao salvar os dados.'),
          backgroundColor: Colors.red,
        ),
      );*/
    }
  }
}
