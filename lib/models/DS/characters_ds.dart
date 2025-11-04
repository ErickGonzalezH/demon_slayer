import 'dart:convert';

class CharactersModel {
    Pagination pagination;
    List<Content> content;

    CharactersModel({
        required this.pagination,
        required this.content,
    });

    factory CharactersModel.fromRawJson(String str) => CharactersModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory CharactersModel.fromJson(Map<String, dynamic> json) => CharactersModel(
        pagination: Pagination.fromJson(json["pagination"]),
        content: List<Content>.from(json["content"].map((x) => Content.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "pagination": pagination.toJson(),
        "content": List<dynamic>.from(content.map((x) => x.toJson())),
    };
}

class Content {
    int? id;
    String? name;
    int? age;
    String? gender;
    String? race;
    String? description;
    String? img;
    int? affiliationId;
    int? arcId;
    String? quote;

    Content({
        required this.id,
        required this.name,
        required this.age,
        required this.gender,
        required this.race,
        required this.description,
        required this.img,
        required this.affiliationId,
        required this.arcId,
        required this.quote,
    });

    factory Content.fromRawJson(String str) => Content.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Content.fromJson(Map<String, dynamic> json) => Content(
        id: json["id"] ?? 0,
        name: json["name"] ?? '',
        age: json["age"] ?? 0,
        gender: json["gender"] ?? '',
        race: json["race"] ?? '',
        description: json["description"] ?? '',
        img: json["img"] ?? '',
        affiliationId: json["affiliation_id"] ?? 0,
        arcId: json["arc_id"] ?? 0,
        quote: json["quote"] ?? '',
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "age": age,
        "gender": gender,
        "race": race,
        "description": description,
        "img": img,
        "affiliation_id": affiliationId,
        "arc_id": arcId,
        "quote": quote,
    };
}

class Pagination {
    int totalElements;
    int elementsOnPage;
    int currentPage;
    int totalPages;
    String previousPage;
    String nextPage;

    Pagination({
        required this.totalElements,
        required this.elementsOnPage,
        required this.currentPage,
        required this.totalPages,
        required this.previousPage,
        required this.nextPage,
    });

    factory Pagination.fromRawJson(String str) => Pagination.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
        totalElements: json["totalElements"],
        elementsOnPage: json["elementsOnPage"],
        currentPage: json["currentPage"],
        totalPages: json["totalPages"],
        previousPage: json["previousPage"],
        nextPage: json["nextPage"],
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
