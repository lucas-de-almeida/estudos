import 'package:app_filmes/aplication/ui/loader/loader_mixin.dart';
import 'package:app_filmes/aplication/ui/messages/messages_mixin.dart';
import 'package:app_filmes/services/login/login_service.dart';
import 'package:get/get.dart';

class LoginController extends GetxController with LoaderMixin, MessagesMixin {
  final loading = false.obs;
  final message = Rxn<MessageModel>();
  final LoginService _loginService;

  LoginController({
    required LoginService loginService,
  }) : _loginService = loginService;
  @override
  void onInit() {
    super.onInit();
    loaderListener(loading);
    messageListener(message);
  }

  Future<void> login() async {
    try {
      loading(true);
      await _loginService.login();
      loading(false);
      message(MessageModel.info(
          title: 'Login Sucesso ! !', message: 'Login realizado com sucesso'));
      await 1.seconds.delay();
    } on Exception catch (e, s) {
      print(e);
      print(s);
      loading(false);

      message(
          MessageModel.error(title: 'Erro', message: 'Erro ao realizar Login'));
    }
  }
}
