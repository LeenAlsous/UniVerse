import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:sizer/sizer.dart';
import 'package:uni_verse/l10n/app_locale.dart';
import 'package:uni_verse/presentation/create_account.dart';
import 'package:uni_verse/presentation/helpers/Budgeting.dart';
import 'package:uni_verse/presentation/helpers/libraries.dart';
import 'package:uni_verse/presentation/home_page.dart';
import 'package:uni_verse/presentation/new_password.dart';
import 'package:uni_verse/presentation/sign_in.dart';

import 'generated/l10n.dart';

void main() {
  runApp(const UniVerse());
}

class UniVerse extends StatelessWidget {
  const UniVerse({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScopedModel<AppLocale>(
        model: AppLocale(),
        child: ScopedModelDescendant<AppLocale>(
          builder: (widget, context, model) {
            return Sizer(
              builder: (context, orientation, deviceType){
                return MaterialApp(
                  debugShowCheckedModeBanner: false,
                  locale: AppLocale().currentLocale,
                  supportedLocales: S.delegate.supportedLocales,
                  localizationsDelegates: const [
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                    S.delegate
                  ],
                  theme: ThemeData(
                    primaryColor: const Color(0xFF371942),
                    textTheme: const TextTheme(
                      bodyLarge: TextStyle(fontSize: 30),
                      bodyMedium: TextStyle(fontSize: 14),
                    ),
                  ),
                  home: Libraries(),
                  routes: {
                    CreateAccount.route: (context) => const CreateAccount(),
                    SignIn.route: (context) => const SignIn(),
                    NewPassword.route: (context) => const NewPassword(),
                    HomePage.route: (context) => const HomePage()
                  },
                );
              },
            );
          },
        ));
  }
}
