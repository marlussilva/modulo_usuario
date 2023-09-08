import 'package:mobx/mobx.dart';
import 'package:my_api/model/user.dart';
part 'global_store.g.dart';

class GlobalStore = _GlobalStoreBase with _$GlobalStore;

abstract class _GlobalStoreBase with Store {
  @observable
  User? user;

  @action
  void setUser(User v) => user = v;
}
