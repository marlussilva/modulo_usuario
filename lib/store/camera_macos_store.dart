import 'dart:typed_data';

import 'package:camera_macos/camera_macos_controller.dart';
import 'package:camera_macos/camera_macos_device.dart';
import 'package:camera_macos/camera_macos_file.dart';
import 'package:camera_macos/camera_macos_platform_interface.dart';
import 'package:camera_macos/camera_macos_view.dart';
import 'package:camera_macos/exceptions.dart';
import 'package:mobx/mobx.dart';
import 'package:path/path.dart' as pathJoiner;
import 'package:path_provider/path_provider.dart';

part 'camera_macos_store.g.dart';

class CameraMacOsStore = _CameraMacOsStoreBase with _$CameraMacOsStore;

abstract class _CameraMacOsStoreBase with Store {
  @observable
  bool isInitializing =
      true; // para indicar que a câmera está em processo de inicialização

  @observable
  bool hasTimedOut = false; // para indicar se atingiu o tempo limite

  @action
  void setInitializationTimeout() {
    Future.delayed(Duration(seconds: 5), () {
      if (selectedVideoDevice == null) {
        hasTimedOut = true;
        isInitializing = false;
      }
    });
  }

  @action
  void setCameraInitialized() {
    isInitializing = false;
    hasTimedOut =
        false; // garante que se a câmera inicializou, o timeout não seja aplicado
  }

  @observable
  CameraMacOSController? macOSController;

  @observable
  CameraMacOSMode cameraMode = CameraMacOSMode.photo;

  @observable
  double durationValue = 15;

  @observable
  Uint8List? lastImagePreviewData;

  @observable
  Uint8List? lastRecordedVideoData;

  @observable
  List<CameraMacOSDevice> videoDevices = [];

  @observable
  String? selectedVideoDevice;

  @observable
  List<CameraMacOSDevice> audioDevices = [];

  @observable
  String? selectedAudioDevice;

  @observable
  bool enableAudio = true;

  @observable
  bool usePlatformView = false;

  // Observers para escutar mudanças nos valores e executar ações.
  @action
  Future<void> listVideoDevices() async {
    //... (o método que você já tinha)
    try {
      List<CameraMacOSDevice> videoDevices =
          await CameraMacOS.instance.listDevices(
        deviceType: CameraMacOSDeviceType.video,
      );
      print(videoDevices.length);
      if (videoDevices.isNotEmpty) {
        selectedVideoDevice = videoDevices.first.deviceId;
      }
      setCameraInitialized();
    } catch (e) {
      print(e);
      //showAlert(message: e.toString());
    }
  }

  @action
  Future<void> listAudioDevices() async {
    try {
      List<CameraMacOSDevice> audioDevices =
          await CameraMacOS.instance.listDevices(
        deviceType: CameraMacOSDeviceType.audio,
      );

      this.audioDevices = audioDevices;
      if (audioDevices.isNotEmpty) {
        selectedAudioDevice = audioDevices.first.deviceId;
      }
    } catch (e) {
      print(e);
    }
  }

  @action
  void changeCameraMode() {
    //... (o método que você já tinha)

    cameraMode = cameraMode == CameraMacOSMode.photo
        ? CameraMacOSMode.video
        : CameraMacOSMode.photo;
  }

  @action
  Future<void> destroyCamera() async {
    //... (o método que você já tinha)
    try {
      if (macOSController != null) {
        if (macOSController!.isDestroyed) {
        } else {
          await macOSController?.destroy();
        }
      }
    } catch (e) {
      print(e);
    }
  }

  @action
  Future<void> onCameraButtonTap() async {
    //... (o método que você já tinha)
    try {
      if (macOSController != null) {
        switch (cameraMode) {
          case CameraMacOSMode.photo:
            CameraMacOSFile? imageData = await macOSController!.takePicture();
            if (imageData != null) {
              lastImagePreviewData = imageData.bytes;
            }
            break;
          case CameraMacOSMode.video:
            if (macOSController!.isRecording) {
              CameraMacOSFile? videoData =
                  await macOSController!.stopRecording();
              if (videoData != null) {
                lastRecordedVideoData = videoData.bytes;
              }
            } else {
              startRecording();
            }
            break;
        }
      }
    } catch (e) {
      print(e);
    }
  }

  @computed
  Future<String> get videoFilePath async {
    return pathJoiner.join(
        (await getApplicationDocumentsDirectory()).path, "output.mp4");
  }

  @action
  Future<void> startRecording() async {
    //... (o método que você já tinha)
    try {
      String urlPath = await videoFilePath;
      await macOSController!.recordVideo(
        maxVideoDuration: durationValue,
        url: urlPath,
        enableAudio: enableAudio,
        onVideoRecordingFinished:
            (CameraMacOSFile? result, CameraMacOSException? exception) {
          if (exception != null) {
          } else if (result != null) {}
        },
      );
    } catch (e) {
      print(e);
    } finally {}
  }
}
