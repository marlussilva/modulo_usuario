// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avatar_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AvatarStore on _AvatarStoreBase, Store {
  late final _$avatarSelectedAtom =
      Atom(name: '_AvatarStoreBase.avatarSelected', context: context);

  @override
  Uint8List? get avatarSelected {
    _$avatarSelectedAtom.reportRead();
    return super.avatarSelected;
  }

  @override
  set avatarSelected(Uint8List? value) {
    _$avatarSelectedAtom.reportWrite(value, super.avatarSelected, () {
      super.avatarSelected = value;
    });
  }

  late final _$_AvatarStoreBaseActionController =
      ActionController(name: '_AvatarStoreBase', context: context);

  @override
  void setAvatarSeletected(Uint8List? v) {
    final _$actionInfo = _$_AvatarStoreBaseActionController.startAction(
        name: '_AvatarStoreBase.setAvatarSeletected');
    try {
      return super.setAvatarSeletected(v);
    } finally {
      _$_AvatarStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
avatarSelected: ${avatarSelected}
    ''';
  }
}
