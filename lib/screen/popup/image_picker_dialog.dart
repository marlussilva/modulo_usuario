import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:modulo_usuario/screen/camera/mac/camera_mac_screen.dart';
import 'package:modulo_usuario/store/avatar_store.dart';

class ImagePickerDialog {
  static void showCamera(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height * 0.8,
              maxWidth: MediaQuery.of(context).size.width * 0.8,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 5,
                  blurRadius: 15,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Stack(
              children: <Widget>[
                CameraMacScreen(),
                Positioned(
                  top: 10,
                  right: 10,
                  child: IconButton(
                    icon: Icon(Icons.close, color: Colors.white60),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  static void showOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.camera),
                  title: Text('Abrir câmera'),
                  onTap: () {
                    Navigator.of(context).pop(); // Fecha o modal
                    ImagePickerDialog.showCamera(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.photo_library),
                  title: Text('Escolher da galeria'),
                  onTap: () async {
                    Navigator.of(context).pop();
                    // Aqui, você pode adicionar a lógica para abrir a galeria
                    ImagePicker imagePicker = ImagePicker();
                    var image = await imagePicker.pickImage(
                        source: ImageSource.gallery);
                    var avtStore = GetIt.I<AvatarStore>();
                    var bytes = await image?.readAsBytes();
                    if (bytes != null) {
                      avtStore.setAvatarSeletected(bytes);
                    }
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
