import 'package:flutter/foundation.dart';

class Language extends ChangeNotifier {
  static List<String> _languages = ['Norsk', 'English', 'German'];
  final List<List> utstilling = [
    ['Sivil Utstilling', 'Militær Utstilling'],
    ['Civil Exhibition', 'Military Exhibition'],
    ['Zivile Ausstellung', 'Militärausstellung']
  ];

  final List<String> civilSideDescriptions = [
    'Consolidated Catalina er luftfartshistoriens mest kjente maritime patruljefly. Flybåten med kallenavnet «Katta» viste seg å bli den mest allsidige og mest brukte maritime patruljebomberen under andre verdenskrig.De norske maritime flyskvadronene 330 og 333 ble utstyrt med Consolidated Catalina under andre verdenskrig. Oppdragene var havovervåkning, ubåtjakt, konvoibeskyttelse og transport av agenter til og fra norskekysten. 330-skvadronen fikk til sammen syv fly av amfibietypen PBY-5A i juni 1942, før disse igjen ble skiftet ut med Short Sunderland. PBY-5A erstattet skvadronens Northrop N-3PB. I november 1942 forsvant en Catalina sporløst med ni manns besetning. Flytypen Catalina var i bruk i Luftforsvaret fram til 1961.'
        'Civil 1 Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?',
    'Civil 2 Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?',
    'Civil 3 At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat'
  ];
  final List<String> militarySideDescriptions = [
    'Military 0 Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?',
    'Military 1 Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?',
    'Military 2 Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?',
    'Military 3 At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat'
  ];

  final List<String> civilTitle = [
    'PBY-5A Catalina',
    'Civil 1',
    'Civil 2',
    'Civil 3',
  ];
  final List<String> militaryTitle = [
    'Military 0',
    'Military 1',
    'Military 2',
    'Military 3'
  ];

  String _selectedLanguage;
  int selectedLanguageIndex;
  bool isCivilSide;
  int index = 0;

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

  void setSide(bool civil) {
    if (civil) {
      isCivilSide = true;
    } else
      isCivilSide = false;
  }

  bool isLanguage(String language) {
    if (_selectedLanguage == language)
      return true;
    else
      return false;
  }

  String getTitle() {
    return civilTitle[index];
  }

  String getTitleMil() {
    return militaryTitle[index];
  }

  String getDescriptionCivil() {
    return civilSideDescriptions[index];
  }

  String getDescriptionMil() {
    return militarySideDescriptions[index];
  }

  void increaseIndex() {
    if (index < civilSideDescriptions.length - 1) {
      index = index + 1;
      notifyListeners();
      print(index);
    }
  }

  void resetIndex() {
    index = 0;
    notifyListeners();
  }

  void decreaseIndex() {
    if (index != 0) {
      index = index - 1;
      notifyListeners();
      print(index);
    }
  }
}
