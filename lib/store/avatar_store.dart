import 'dart:typed_data';

import 'package:mobx/mobx.dart';
part 'avatar_store.g.dart';

class AvatarStore = _AvatarStoreBase with _$AvatarStore;

abstract class _AvatarStoreBase with Store {
  @observable
  Uint8List? avatarSelected;

  @action
  void setAvatarSeletected(Uint8List? v) {
    avatarSelected = v;
  }
}
