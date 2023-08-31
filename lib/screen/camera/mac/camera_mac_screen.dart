import 'package:camera_macos/camera_macos_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:modulo_usuario/store/camera_macos_store.dart';
// Altere para o caminho correto do seu store

class CameraMacScreen extends StatefulWidget {
  const CameraMacScreen({super.key});

  @override
  State<CameraMacScreen> createState() => _CameraMacScreenState();
}

class _CameraMacScreenState extends State<CameraMacScreen> {
  final cameraStore = GetIt.I<CameraMacOsStore>();

  @override
  void initState() {
    super.initState();
    // Supondo que você tenha um método para inicializar a câmera
    cameraStore.listVideoDevices();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  appBar: AppBar(title: Text('Camera Page')),
      body: Stack(
        children: [
          Observer(
            builder: (_) {
              if (cameraStore.selectedVideoDevice == null) {
                return Center(child: CircularProgressIndicator());
              }
      
              return CameraMacOSView(
                cameraMode: cameraStore.cameraMode,
                deviceId: cameraStore.selectedVideoDevice,
                //audioDeviceId: cameraStore.selectedAudioDevice,
                enableAudio: cameraStore.enableAudio,
                onCameraInizialized: (controller) {
                  cameraStore.macOSController = controller;
                },
                onCameraLoading: (error) {
                  return Center(
                      child: Text("Erro ao carregar a câmera: $error"));
                },
                onCameraDestroyed: () {
                  return Center(child: Text("Câmera destruída."));
                },
              );
            },
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 20,
            child: Center(
              child: FloatingActionButton(
                onPressed: cameraStore.onCameraButtonTap,
                child: Icon(Icons.camera),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    cameraStore.destroyCamera();
    super.dispose();
  }
}