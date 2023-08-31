import 'dart:io';

import 'package:flutter/material.dart';
import 'package:modulo_usuario/screen/camera/mac/camera_mac_screen.dart';

class ImagePickerDialog {
  static void showCamera(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Container(
            height: 500,
            width: 500,
            child: Stack(
              alignment: Alignment.topRight,
              children: <Widget>[
                (Platform.isMacOS) ? CameraMacScreen() : Container(),
                Positioned(
                  right: 0,
                  child: IconButton(
                    icon: Icon(Icons.close),
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
                  onTap: () {
                    Navigator.of(context).pop();
                    // Aqui, você pode adicionar a lógica para abrir a galeria
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
