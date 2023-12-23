import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sign_button/constants.dart';
import 'package:sign_button/create_button.dart';
import 'package:sizer/sizer.dart';
import 'package:uni_verse/presentation/sign_in.dart';
import '../generated/l10n.dart';
import 'common/Colored_check_box.dart';
import 'common/line_divider.dart';
import 'common/resizable_button.dart';
import 'common/rounded_password_text_form_field.dart';
import 'common/rounded_text_form_field.dart';
import 'common/underlined_text_button.dart';
import 'helpers/validation_functions.dart';

class CreateAccount extends StatefulWidget {
  static String route = "CreateAccount";
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final _formKey = GlobalKey<FormState>();
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
              Text(S.of(context).signUp,
                  style: TextStyle(
                      color: const Color(0xFF000000),
                      fontSize:
                          Theme.of(context).textTheme.bodyLarge?.fontSize)),
              Text(
                S.of(context).newAccountDescription,
                textAlign: TextAlign.center,
              ),
              Form(
                key: _formKey,
                child: Column(children: [
                  RoundedTextFormField(
                    label: S.of(context).name,
                    hintText: "Jane doe",
                    validator: (val) {
                      if (val!.isEmpty) return "please fill your name";
                      return null;
                    },
                    onChanged: (value) {
                      //context.read<CreateAccountProvider>().setName(value);
                    },
                  ),
                  RoundedTextFormField(
                    label: S.of(context).email,
                    hintText: "example@gmail.com",
                    validator: (val) {
                      if (!Validation.isEmail(val!)) {
                        return S.of(context).emailWarning;
                      }
                      return null;
                    },
                    onChanged: (value) {
                      //context.read<CreateAccountProvider>().setEmail(value);
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
                      /* context
                            .read<CreateAccountProvider>()
                            .setPassword(value);*/
                    },
                  ),
                ]),
              ),
              Row(
                children: [
                  const ColoredCheckBox(),
                  Text(S.of(context).agreeWith),
                  UnderlinedTextButton(
                      text: S.of(context).termsConditions,
                      onPressed: () {})
                ],
              ),
              ResizableButton(
                  text: S.of(context).signUp,
                  width: 100.w,
                  onPressed: () {}),
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
                  Text(S.of(context).haveAccount),
                  UnderlinedTextButton(
                      text: S.of(context).signIn,
                      onPressed: () {
                        Navigator.pushNamed(context, SignIn.route);
                      })
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
