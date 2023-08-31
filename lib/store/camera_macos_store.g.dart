// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'camera_macos_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CameraMacOsStore on _CameraMacOsStoreBase, Store {
  Computed<Future<String>>? _$videoFilePathComputed;

  @override
  Future<String> get videoFilePath => (_$videoFilePathComputed ??=
          Computed<Future<String>>(() => super.videoFilePath,
              name: '_CameraMacOsStoreBase.videoFilePath'))
      .value;

  late final _$macOSControllerAtom =
      Atom(name: '_CameraMacOsStoreBase.macOSController', context: context);

  @override
  CameraMacOSController? get macOSController {
    _$macOSControllerAtom.reportRead();
    return super.macOSController;
  }

  @override
  set macOSController(CameraMacOSController? value) {
    _$macOSControllerAtom.reportWrite(value, super.macOSController, () {
      super.macOSController = value;
    });
  }

  late final _$cameraModeAtom =
      Atom(name: '_CameraMacOsStoreBase.cameraMode', context: context);

  @override
  CameraMacOSMode get cameraMode {
    _$cameraModeAtom.reportRead();
    return super.cameraMode;
  }

  @override
  set cameraMode(CameraMacOSMode value) {
    _$cameraModeAtom.reportWrite(value, super.cameraMode, () {
      super.cameraMode = value;
    });
  }

  late final _$durationValueAtom =
      Atom(name: '_CameraMacOsStoreBase.durationValue', context: context);

  @override
  double get durationValue {
    _$durationValueAtom.reportRead();
    return super.durationValue;
  }

  @override
  set durationValue(double value) {
    _$durationValueAtom.reportWrite(value, super.durationValue, () {
      super.durationValue = value;
    });
  }

  late final _$lastImagePreviewDataAtom = Atom(
      name: '_CameraMacOsStoreBase.lastImagePreviewData', context: context);

  @override
  Uint8List? get lastImagePreviewData {
    _$lastImagePreviewDataAtom.reportRead();
    return super.lastImagePreviewData;
  }

  @override
  set lastImagePreviewData(Uint8List? value) {
    _$lastImagePreviewDataAtom.reportWrite(value, super.lastImagePreviewData,
        () {
      super.lastImagePreviewData = value;
    });
  }

  late final _$lastRecordedVideoDataAtom = Atom(
      name: '_CameraMacOsStoreBase.lastRecordedVideoData', context: context);

  @override
  Uint8List? get lastRecordedVideoData {
    _$lastRecordedVideoDataAtom.reportRead();
    return super.lastRecordedVideoData;
  }

  @override
  set lastRecordedVideoData(Uint8List? value) {
    _$lastRecordedVideoDataAtom.reportWrite(value, super.lastRecordedVideoData,
        () {
      super.lastRecordedVideoData = value;
    });
  }

  late final _$videoDevicesAtom =
      Atom(name: '_CameraMacOsStoreBase.videoDevices', context: context);

  @override
  List<CameraMacOSDevice> get videoDevices {
    _$videoDevicesAtom.reportRead();
    return super.videoDevices;
  }

  @override
  set videoDevices(List<CameraMacOSDevice> value) {
    _$videoDevicesAtom.reportWrite(value, super.videoDevices, () {
      super.videoDevices = value;
    });
  }

  late final _$selectedVideoDeviceAtom =
      Atom(name: '_CameraMacOsStoreBase.selectedVideoDevice', context: context);

  @override
  String? get selectedVideoDevice {
    _$selectedVideoDeviceAtom.reportRead();
    return super.selectedVideoDevice;
  }

  @override
  set selectedVideoDevice(String? value) {
    _$selectedVideoDeviceAtom.reportWrite(value, super.selectedVideoDevice, () {
      super.selectedVideoDevice = value;
    });
  }

  late final _$audioDevicesAtom =
      Atom(name: '_CameraMacOsStoreBase.audioDevices', context: context);

  @override
  List<CameraMacOSDevice> get audioDevices {
    _$audioDevicesAtom.reportRead();
    return super.audioDevices;
  }

  @override
  set audioDevices(List<CameraMacOSDevice> value) {
    _$audioDevicesAtom.reportWrite(value, super.audioDevices, () {
      super.audioDevices = value;
    });
  }

  late final _$selectedAudioDeviceAtom =
      Atom(name: '_CameraMacOsStoreBase.selectedAudioDevice', context: context);

  @override
  String? get selectedAudioDevice {
    _$selectedAudioDeviceAtom.reportRead();
    return super.selectedAudioDevice;
  }

  @override
  set selectedAudioDevice(String? value) {
    _$selectedAudioDeviceAtom.reportWrite(value, super.selectedAudioDevice, () {
      super.selectedAudioDevice = value;
    });
  }

  late final _$enableAudioAtom =
      Atom(name: '_CameraMacOsStoreBase.enableAudio', context: context);

  @override
  bool get enableAudio {
    _$enableAudioAtom.reportRead();
    return super.enableAudio;
  }

  @override
  set enableAudio(bool value) {
    _$enableAudioAtom.reportWrite(value, super.enableAudio, () {
      super.enableAudio = value;
    });
  }

  late final _$usePlatformViewAtom =
      Atom(name: '_CameraMacOsStoreBase.usePlatformView', context: context);

  @override
  bool get usePlatformView {
    _$usePlatformViewAtom.reportRead();
    return super.usePlatformView;
  }

  @override
  set usePlatformView(bool value) {
    _$usePlatformViewAtom.reportWrite(value, super.usePlatformView, () {
      super.usePlatformView = value;
    });
  }

  late final _$listVideoDevicesAsyncAction =
      AsyncAction('_CameraMacOsStoreBase.listVideoDevices', context: context);

  @override
  Future<void> listVideoDevices() {
    return _$listVideoDevicesAsyncAction.run(() => super.listVideoDevices());
  }

  late final _$listAudioDevicesAsyncAction =
      AsyncAction('_CameraMacOsStoreBase.listAudioDevices', context: context);

  @override
  Future<void> listAudioDevices() {
    return _$listAudioDevicesAsyncAction.run(() => super.listAudioDevices());
  }

  late final _$destroyCameraAsyncAction =
      AsyncAction('_CameraMacOsStoreBase.destroyCamera', context: context);

  @override
  Future<void> destroyCamera() {
    return _$destroyCameraAsyncAction.run(() => super.destroyCamera());
  }

  late final _$onCameraButtonTapAsyncAction =
      AsyncAction('_CameraMacOsStoreBase.onCameraButtonTap', context: context);

  @override
  Future<void> onCameraButtonTap() {
    return _$onCameraButtonTapAsyncAction.run(() => super.onCameraButtonTap());
  }

  late final _$startRecordingAsyncAction =
      AsyncAction('_CameraMacOsStoreBase.startRecording', context: context);

  @override
  Future<void> startRecording() {
    return _$startRecordingAsyncAction.run(() => super.startRecording());
  }

  late final _$_CameraMacOsStoreBaseActionController =
      ActionController(name: '_CameraMacOsStoreBase', context: context);

  @override
  void changeCameraMode() {
    final _$actionInfo = _$_CameraMacOsStoreBaseActionController.startAction(
        name: '_CameraMacOsStoreBase.changeCameraMode');
    try {
      return super.changeCameraMode();
    } finally {
      _$_CameraMacOsStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
macOSController: ${macOSController},
cameraMode: ${cameraMode},
durationValue: ${durationValue},
lastImagePreviewData: ${lastImagePreviewData},
lastRecordedVideoData: ${lastRecordedVideoData},
videoDevices: ${videoDevices},
selectedVideoDevice: ${selectedVideoDevice},
audioDevices: ${audioDevices},
selectedAudioDevice: ${selectedAudioDevice},
enableAudio: ${enableAudio},
usePlatformView: ${usePlatformView},
videoFilePath: ${videoFilePath}
    ''';
  }
}
