import 'package:camera_macos/camera_macos_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:modulo_usuario/store/camera_macos_store.dart';
import 'package:modulo_usuario/util/image_assets.dart';

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
    cameraStore.listVideoDevices();
    cameraStore.setInitializationTimeout();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        // Verifica se a câmera ainda está inicializando
        if (cameraStore.isInitializing) {
          // Verifica se o tempo de inicialização expirou
          if (cameraStore.hasTimedOut) {
            return Center(
                child: Text("Não há câmera disponível no dispositivo."));
          }
          return Center(child: CircularProgressIndicator());
        }

        // Se não tem um dispositivo de vídeo selecionado
        if (cameraStore.selectedVideoDevice == null) {
          return Container(
            width: 500,
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.center, // Centraliza horizontalmente
              mainAxisAlignment:
                  MainAxisAlignment.center, // Centraliza verticalmente
              children: [
                Container(
                  height: 50,
                  width: 50,
                  child: Image.asset(
                    ImageAssets.nocamera,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text("Nenhum dispositivo de vídeo detectado")
              ],
            ),
          );
        }

        return Stack(
          children: [
            CameraMacOSView(
              cameraMode: cameraStore.cameraMode,
              deviceId: cameraStore.selectedVideoDevice,
              enableAudio: cameraStore.enableAudio,
              onCameraInizialized: (controller) {
                cameraStore.macOSController = controller;
              },
              onCameraLoading: (error) {
                if (error == null) {
                  return Center(child: CircularProgressIndicator());
                } else {
                  return Center(
                      child: Text("Erro ao carregar a câmera: $error"));
                }
              },
              onCameraDestroyed: () {
                return Center(child: Text("Câmera destruída."));
              },
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 20,
              child: Center(
                child: FloatingActionButton(
                  backgroundColor: Colors.white30,
                  onPressed: () {
                    cameraStore.onCameraButtonTap();
                    Navigator.of(context).pop();
                  }, // Função para tirar uma foto ou gravar um vídeo
                  child: Icon(Icons.camera_alt, color: Colors.white),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    cameraStore.destroyCamera();
    super.dispose();
  }
}
