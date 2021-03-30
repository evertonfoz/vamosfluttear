import 'package:mobx/mobx.dart';

part 'login_page_store.g.dart';

// flutter packages pub run build_runner build
// flutter packages pub run build_runner build --delete-conflicting-outputs
// flutter packages pub run build_runner watch
class LoginPageStore = _LoginPageStore with _$LoginPageStore;

abstract class _LoginPageStore with Store {
  @observable
  String email = '';

  @observable
  String senha = '';

  @computed
  bool get oEmailEhValido {
    if (email.trim().length == 0) return false;

    final Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regex = RegExp(pattern);
    return regex.hasMatch(email);
  }

  @computed
  bool get aSenhaEhValida => senha.trim().length > 0;

  @computed
  bool get oFormularioEhValido => (oEmailEhValido && aSenhaEhValida);

  @action
  atualizarEmail(String novoValor) {
    email = novoValor;
  }

  @action
  atualizarSenha(String novoValor) {
    senha = novoValor;
  }
}
