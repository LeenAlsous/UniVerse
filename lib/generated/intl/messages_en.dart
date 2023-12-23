// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "agreeWith": MessageLookupByLibrary.simpleMessage("Agree With"),
        "changeLanguage":
            MessageLookupByLibrary.simpleMessage("Change language"),
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("Confirm password"),
        "createPassword":
            MessageLookupByLibrary.simpleMessage("Create new password"),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "emailWarning":
            MessageLookupByLibrary.simpleMessage("Enter a valid email"),
        "forgotPassword":
            MessageLookupByLibrary.simpleMessage("Forgot password?"),
        "greeting": MessageLookupByLibrary.simpleMessage(
            "Hi! Welcome back, you\'ve been missed"),
        "haveAccount":
            MessageLookupByLibrary.simpleMessage("already have an account?"),
        "name": MessageLookupByLibrary.simpleMessage("Name"),
        "newAccountDescription": MessageLookupByLibrary.simpleMessage(
            "Fill your information below or register with your social account"),
        "newPassword": MessageLookupByLibrary.simpleMessage("New password"),
        "noAccount":
            MessageLookupByLibrary.simpleMessage("Don\'t have an account?"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "passwordRule": MessageLookupByLibrary.simpleMessage(
            "Your new password must be different from previously used passwords."),
        "passwordWarning": MessageLookupByLibrary.simpleMessage(
            "password must be at least 8 characters, \n with lower case, upper case,\n numbers, and special characters"),
        "signIn": MessageLookupByLibrary.simpleMessage("Sign in"),
        "signUp": MessageLookupByLibrary.simpleMessage("Sign up"),
        "socialsSignIn":
            MessageLookupByLibrary.simpleMessage("Or sign in with"),
        "termsConditions":
            MessageLookupByLibrary.simpleMessage("Terms & conditions")
      };
}
