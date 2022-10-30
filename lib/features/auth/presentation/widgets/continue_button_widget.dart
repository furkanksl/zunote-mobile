// ignore_for_file: no_leading_underscores_for_local_identifiers, avoid_print

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:zunote/core/enum/form_type_enum.dart';
import 'package:zunote/core/presentation/snackbars/error_snackbar.dart';
import 'package:zunote/core/presentation/snackbars/success_snackbar.dart';
import 'package:zunote/features/auth/data/models/form_checker_model.dart';
import 'package:zunote/features/auth/data/repository/auth_repository_impl.dart';
import 'package:zunote/features/auth/presentation/state/auth_provider.dart';
import 'package:zunote/features/auth/presentation/state/auth_state.dart';
import 'package:zunote/features/auth/presentation/state/auth_state_notifier.dart';
import 'package:zunote/features/home/presentation/home_screen.dart';

class ContinueButton extends HookConsumerWidget {
  const ContinueButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AuthState _authPageProvider = ref.watch(authPageProvider);
    AuthNotifier _authPageNotifier = ref.read(authPageProvider.notifier);
    AuthRepositoryImpl _authRepositoryProvider = ref.watch(authRepositoryProvider);

    bool _isLogin = _authPageProvider.toggleIndex == 0;

    final _isLoading = useState(false);

    return OutlinedButton(
      onPressed: () async {
        if (_isLoading.value) return;

        _isLoading.value = true;
        String email = _authPageProvider.email ?? "";
        String password = _authPageProvider.password ?? "";
        String passwordAgain = _authPageProvider.passwordAgain ?? "";

        FormCheckerModel formCheckerModel = _authRepositoryProvider.checkForm(
          formType: _isLogin ? FORM_TYPE.LOGIN : FORM_TYPE.SIGNUP,
          email: email,
          password: password,
          passwordAgain: passwordAgain,
        );

        if (!formCheckerModel.isValidForm) {
          SnackBar snackBar = errorSnackBar(formCheckerModel.message);
          ScaffoldMessenger.of(context).showSnackBar(snackBar);

          _isLoading.value = false;
          return;
        }

        if (_isLogin) {
          var result = await _authRepositoryProvider.signInWithEmailAndPassword(email, password);

          result.fold(
            (l) {
              SnackBar snackBar = errorSnackBar(l.message.toString());
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            (r) async => await Navigator.push(
              context,
              MaterialPageRoute(
                fullscreenDialog: true,
                builder: (context) => HomeScreen(),
              ),
            ),
          );
        } else {
          var result = await _authRepositoryProvider.signUpWithEmailAndPassword(email, password);

          result.fold(
            (l) {
              SnackBar snackBar = errorSnackBar(l.message.toString());
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            (r) async {
              SnackBar snackBar = successSnackBar('Yay! You signed up successfully. Now, You can login!');
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              _authPageNotifier.setToggleIndex(0);
            },
          );
        }

        _isLoading.value = false;
      },
      style: ButtonStyle(
        elevation: const MaterialStatePropertyAll(5),
        overlayColor: const MaterialStatePropertyAll(Colors.black12),
        backgroundColor: MaterialStatePropertyAll(Theme.of(context).cardColor),
        fixedSize: const MaterialStatePropertyAll(Size(140, 40)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
      child: _isLoading.value
          ? const CircularProgressIndicator(color: Colors.white)
          : Text(
              "continue".tr(),
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
    );
  }
}
