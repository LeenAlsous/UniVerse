import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../generated/l10n.dart';
import 'common/resizable_button.dart';
import 'common/rounded_password_text_form_field.dart';


class NewPassword extends StatefulWidget {
  static String route = "NewPassword";
  const NewPassword({Key? key}) : super(key: key);

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Column(
            children: [
              const BackButton(),
              Padding(
                padding: EdgeInsets.only(
                    left: 5.w,
                    right: 5.w),
                child: Column(
                  children: [
                    Text(
                      S.of(context).newPassword,
                      style: TextStyle(
                          fontSize: Theme.of(context).textTheme.bodyLarge?.fontSize),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      S.of(context).passwordRule,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    RoundedPasswordTextFormField(
                      validator: (val){
                        if(val!.isEmpty){return S.of(context)
                            .passwordWarning;}
                        return null;
                      },
                      onChanged: (value) {
                        //context.read<NewPasswordProvider>().setPassword(value);
                      },
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    RoundedPasswordTextFormField(
                      label: S.of(context).confirmPassword,
                      validator: (val){
                        if(val!.isEmpty){return S.of(context)
                            .passwordWarning;}
                        return null;
                      },
                      onChanged: (value) {
                        /*context
                          .read<NewPasswordProvider>()
                          .setConfirmPassword(value);*/
                      },
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    ResizableButton(
                        text: S.of(context).createPassword,
                        onPressed: () {
                          Navigator.pop(context);
                        })
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}
