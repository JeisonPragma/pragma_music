import 'package:flutter/material.dart';
import 'package:pragma_music/ui/componets/base_ui.dart';
import 'package:pragma_music/ui/login/widgets/form_ui.dart';

class LoginUI extends StatelessWidget {
  const LoginUI({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const BaseUI(body: FormUI());
  }
}
