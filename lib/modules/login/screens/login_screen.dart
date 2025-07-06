import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ticketpedia/assets/assets.gen.dart';
import 'package:ticketpedia/modules/login/providers/login_provider.dart';
import 'package:ticketpedia/utils/ext/size_ext.dart';
import 'package:ticketpedia/utils/helper/divider_helper.dart';
import 'package:ticketpedia/utils/helper/style_helper.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginProvider = ref.read(loginChangeNotifierProvider);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                Assets.lib.assets.img.logo.path,
                width: 75,
                height: 75,
                fit: BoxFit.cover,
              ),
            ),
            v(5),
            Text("Login into your account", style: text(context).titleMedium,),
            v(3),
            TextFormField(
              decoration: InputDecoration(
                // border: OutlineInputBorder(),
                hintText: "Phone number",
              ),
            ),
            v(1),
            TextFormField(
              decoration: InputDecoration(
                // border: OutlineInputBorder(),
                hintText: "Password",
              ),
            ),
            v(1),
            Row(
              children: [Spacer(), Text("Forgot your password?")],
            ),
            v(2),
            InkWell(
              onTap: () => loginProvider.login(),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.blue,
                ),
                padding: EdgeInsets.symmetric(vertical: 10),
                width: 100.w(context),
                child: Text(
                  "Login",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            v(2),
            Row(children: [
              Expanded(child: Divider()),
              h(1),
              Text("or"),
              h(1),
              Expanded(child: Divider())
            ]),
            v(2),
            InkWell(
              onTap: () => loginProvider.login(),
              child: Container(
                decoration: BoxDecoration(border: Border.all()),
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      Assets.lib.assets.img.google.path,
                      width: 30,
                      height: 30,
                      fit: BoxFit.cover,
                    ),
                    h(1),
                    Text("Login with Google")
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
