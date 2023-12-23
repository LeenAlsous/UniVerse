import 'package:flutter/material.dart';

class LanguageDropdownList extends StatefulWidget {
  final void Function(String?)? onChanged;
  const LanguageDropdownList({Key? key, this.onChanged}) : super(key: key);

  @override
  State<LanguageDropdownList> createState() => _LanguageDropdownListState();
}

class _LanguageDropdownListState extends State<LanguageDropdownList> {
  List<String> languages = ['en', 'ar'];
  String selectedLanguage = 'en';
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton(
        value: selectedLanguage,
        items:
        languages.map((String language) {
          return DropdownMenuItem<String>(
            value: language,
            child: Text(language),
          );
        }).toList(),
        onChanged: (language){
          setState(() {
            selectedLanguage = language!;
          });
          if(widget.onChanged != null){
            widget.onChanged;
          }
        },
      ),
    );
  }
}

