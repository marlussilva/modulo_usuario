// importações necessárias
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:modulo_usuario/store/organization_store.dart';

class OrganizationFormScreen extends StatelessWidget {
  final OrganizationStore store = GetIt.I<OrganizationStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Organization Form'),
      ),
      body: Form(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              _buildTextField(
                label: "Name",
                onChanged: store.setName,
                errorText: store.nameError,
              ),
              _buildTextField(
                label: "Legal Name",
                onChanged: store.setLegalName,
                errorText: store.legalNameError,
              ),
              _buildTextField(
                label: "Tax ID",
                onChanged: store.setTaxId,
                errorText: store.taxIdError,
              ),
              _buildTextField(
                label: "Address",
                onChanged: store.setAddress,
                errorText: store.addressError,
              ),
              _buildTextField(
                label: "City",
                onChanged: store.setCity,
                errorText: store.cityError,
              ),
              _buildTextField(
                label: "State",
                onChanged: store.setState,
                errorText: store.stateError,
              ),
              _buildTextField(
                label: "Zip Code",
                onChanged: store.setZipCode,
                errorText: store.zipCodeError,
              ),
              _buildTextField(
                label: "Country",
                onChanged: store.setCountry,
                errorText: store.countryError,
              ),
              _buildTextField(
                label: "Phone Number",
                onChanged: store.setPhoneNumber,
                errorText: store.phoneNumberError,
              ),
              _buildTextField(
                label: "Email",
                onChanged: store.setEmail,
                errorText: store.emailError,
              ),
              _buildTextField(
                label: "Website",
                onChanged: store.setWebsite,
                errorText: store.websiteError,
              ),
              ElevatedButton(
                onPressed: _onSave,
                child: Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required String label,
    required Function(String) onChanged,
    String? errorText, // Função que retorna uma String? diretamente
  }) {
    return Observer(
      builder: (_) => TextField(
        decoration: InputDecoration(
          labelText: label,
          errorText: errorText, // Chamando a função para obter a String?
        ),
        onChanged: onChanged,
      ),
    );
  }

  void _onSave() async {
    if (await store.save()) {
      // Show success message or navigate away
    } else {
      // Show error message
    }
  }
}
