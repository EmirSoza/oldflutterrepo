import 'package:flutter/foundation.dart';

class Language extends ChangeNotifier {
  static List<String> _languages = ['Norsk', 'English', 'German'];
  final List<List> utstilling = [
    ['Sivil Utstilling', 'Militær Utstilling'],
    ['Civil Exhibition', 'Military Exhibition'],
    ['Zivile Ausstellung', 'Militärausstellung']
  ];
  String _selectedLanguage;
  int selectedLanguageIndex;

  void setLanguage(int index) {
    _selectedLanguage = _languages[index];
    selectedLanguageIndex = index;
    print(_selectedLanguage);
    notifyListeners();
  }

  String civilText(bool civil) {
    if (civil) {
      return utstilling[selectedLanguageIndex][0];
    } else
      return utstilling[selectedLanguageIndex][1];
  }

  bool isLanguage(String language) {
    if (_selectedLanguage == language)
      return true;
    else
      return false;
  }
}
