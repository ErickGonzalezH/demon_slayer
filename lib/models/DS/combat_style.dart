import 'dart:convert';

class CombatStyleModel {
  Pagination1? pagination1;
  List<Content1> content;

  CombatStyleModel({
    required this.pagination1,
    required this.content,
  });

  factory CombatStyleModel.fromRawJson(String str) =>
      CombatStyleModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CombatStyleModel.fromJson(Map<String, dynamic> json) =>
      CombatStyleModel(
        pagination1: json["pagination1"] != null
            ? Pagination1.fromJson(json["pagination1"])
            : Pagination1(
                totalElements: 0,
                elementsOnPage: 0,
                currentPage: 0,
                totalPages: 0,
                previousPage: '',
                nextPage: '',
              ),
        content: json["content"] == null
            ? []
            : List<Content1>.from(
                json["content"].map((x) => Content1.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "pagination1": pagination1?.toJson(),
        "content": List<dynamic>.from(content.map((x) => x.toJson())),
      };
}

class Content1 {
  int id;
  String? name;
  String? description;
  String? img;
  List<CombatStyleCharacter> combatStyleCharacter;

  Content1({
    required this.id,
    required this.name,
    required this.description,
    required this.img,
    required this.combatStyleCharacter,
  });

  factory Content1.fromRawJson(String str) =>
      Content1.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Content1.fromJson(Map<String, dynamic> json) => Content1(
        id: json["id"] ?? 0,
        name: json["name"] ?? '',
        description: json["description"] ?? '',
        img: json["img"] ?? '',
        combatStyleCharacter: json["combat_style_character"] == null
            ? []
            : List<CombatStyleCharacter>.from(
                json["combat_style_character"]
                    .map((x) => CombatStyleCharacter.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "img": img,
        "combat_style_character":
            List<dynamic>.from(combatStyleCharacter.map((x) => x.toJson())),
      };
}

class CombatStyleCharacter {
  int? id;
  String? name;
  String? description;

  CombatStyleCharacter({
    required this.id,
    required this.name,
    required this.description,
  });

  factory CombatStyleCharacter.fromRawJson(String str) =>
      CombatStyleCharacter.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CombatStyleCharacter.fromJson(Map<String, dynamic> json) =>
      CombatStyleCharacter(
        id: json["id"] ?? 0,
        name: json["name"] ?? '',
        description: json["description"] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
      };
}

class Pagination1 {
  int? totalElements;
  int? elementsOnPage;
  int? currentPage;
  int? totalPages;
  String? previousPage;
  String? nextPage;

  Pagination1({
    required this.totalElements,
    required this.elementsOnPage,
    required this.currentPage,
    required this.totalPages,
    required this.previousPage,
    required this.nextPage,
  });

  factory Pagination1.fromRawJson(String str) =>
      Pagination1.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Pagination1.fromJson(Map<String, dynamic> json) => Pagination1(
        totalElements: json["totalElements"] ?? 0,
        elementsOnPage: json["elementsOnPage"] ?? 0,
        currentPage: json["currentPage"] ?? 0,
        totalPages: json["totalPages"] ?? 0,
        previousPage: json["previousPage"] ?? '',
        nextPage: json["nextPage"] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "totalElements": totalElements,
        "elementsOnPage": elementsOnPage,
        "currentPage": currentPage,
        "totalPages": totalPages,
        "previousPage": previousPage,
        "nextPage": nextPage,
      };
}
