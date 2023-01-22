class QuranData {

  late final int code;
  late final String status;
  late final Data data;

  QuranData.fromJson(Map<String, dynamic> json){
    code = json['code'];
    status = json['status'];
    data = Data.fromJson(json['data']);
  }
}

class Data {

  late final List<Surahs> surahs;
  late final Edition edition;

  Data.fromJson(Map<String, dynamic> json){
    surahs = List.from(json['surahs']).map((e)=>Surahs.fromJson(e)).toList();
    edition = Edition.fromJson(json['edition']);
  }

}

class Surahs {
  late final int number;
  late final String name;
  late final String englishName;
  late final String englishNameTranslation;
  late final String revelationType;
  late final List<Ayahs> ayahs;
  String totalText = "";



  Surahs.fromJson(Map<String, dynamic> json){
    number = json['number'];
    name = json['name'];
    englishName = json['englishName'];
    englishNameTranslation = json['englishNameTranslation'];
    revelationType = json['revelationType'];
    ayahs = List.from(json['ayahs']).map((e) => Ayahs.fromJson(e)).toList();
      ayahs.forEach((element) {
       totalText +=" ${element.text+"     "+ element.numberInSurah.toString()+ "      "  } ";

     });
  }
}

class Ayahs {

  late final int number;
  late final String text;
  late final int numberInSurah;
  late final int juz;
  late final int manzil;
  late final int page;
  late final int ruku;
  late final int hizbQuarter;

//  late final bool? sajda;

  Ayahs.fromJson(Map<String, dynamic> json){
    number = json['number'];
    text = json['text'];
    numberInSurah = json['numberInSurah'];
    juz = json['juz'];
    manzil = json['manzil'];
    page = json['page'];
    ruku = json['ruku'];
    hizbQuarter = json['hizbQuarter'];






  //  sajda = json['sajda'];

  }
}

//class Sajda {

  //late final int id;
  //late final bool recommended;
  //late final bool obligatory;

  //Sajda.fromJson(Map<String, dynamic> json){
   // id = json['id'];
   // recommended = json['recommended'];
    //obligatory = json['obligatory'];
  //}

//}

class Edition {
  late final String identifier;
  late final String language;
  late final String name;
  late final String englishName;
  late final String format;
  late final String type;

  Edition.fromJson(Map<String, dynamic> json){
    identifier = json['identifier'];
    language = json['language'];
    name = json['name'];
    englishName = json['englishName'];
    format = json['format'];
    type = json['type'];
  }

}