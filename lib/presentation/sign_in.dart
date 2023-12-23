import 'package:flutter/material.dart';
import 'package:sign_button/constants.dart';
import 'package:sign_button/create_button.dart';
import 'package:sizer/sizer.dart';
import 'package:uni_verse/l10n/app_locale.dart';
import '../generated/l10n.dart';
import 'common/line_divider.dart';
import 'common/resizable_button.dart';
import 'common/rounded_password_text_form_field.dart';
import 'common/rounded_text_form_field.dart';
import 'common/underlined_text_button.dart';
import 'create_account.dart';
import 'helpers/validation_functions.dart';
import 'home_page.dart';
import 'new_password.dart';

class SignIn extends StatefulWidget {
  static String route = "SignIn";
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool secure = true;
  TextEditingController emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.only(left: 5.w, right: 5.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Align(
                alignment: Alignment.topRight,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).primaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  child: Text(S.of(context).changeLanguage),
                  onPressed: () {
                    setState(() {
                      AppLocale().updateLocale();
                    });
                  },
                )),
            Text(S.of(context).signIn,
                style: TextStyle(
                    fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize)),
            Text(S.of(context).greeting),
            Form(
              key: formKey,
              child: Column(
                children: [
                  RoundedTextFormField(
                    controller: emailController,
                    label: S.of(context).email,
                    hintText: "example@gmail.com",
                    validator: (val) {
                      if (!Validation.isEmail(val!)) {
                        return S.of(context).emailWarning;
                      }
                      return null;
                    },
                    onChanged: (value) {
                      // context.read<SignInProvider>().setEmail(value);
                    },
                  ),
                  RoundedPasswordTextFormField(
                    label: S.of(context).password,
                    validator: (val) {
                      if (!Validation.isPassword(val!)) {
                        return S.of(context).passwordWarning;
                      }
                      return null;
                    },
                    onChanged: (value) {
                      //context.read<SignInProvider>().setPassword(value);
                    },
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: UnderlinedTextButton(
                  text: S.of(context).forgotPassword,
                  onPressed: () {
                    Navigator.pushNamed(context, NewPassword.route);
                  }),
            ),
            ResizableButton(
                text: S.of(context).signIn,
                width: 100.w,
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.pushNamed(context, HomePage.route);
                  }
                }),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const LineDivider(),
                Text(
                  S.of(context).socialsSignIn,
                  style: const TextStyle(color: Colors.black),
                ),
                const LineDivider(),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SignInButton.mini(
                buttonType: ButtonType.apple,
                onPressed: () {},
              ),
              SignInButton.mini(
                buttonType: ButtonType.google,
                onPressed: () {},
              ),
              SignInButton.mini(
                buttonType: ButtonType.facebook,
                btnColor: Colors.white,
                onPressed: () {},
              ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(S.of(context).noAccount),
                UnderlinedTextButton(
                    text: S.of(context).signUp,
                    onPressed: () {
                      Navigator.pushNamed(context, CreateAccount.route);
                    })
              ],
            )
          ],
        ),
      ),
    ));
  }
}
