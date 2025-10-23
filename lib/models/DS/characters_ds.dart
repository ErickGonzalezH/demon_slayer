class CharactersModel {
    Pagination pagination;
    List<Content> content;

    CharactersModel({
        required this.pagination,
        required this.content,
    });

}

class Content {
    int id;
    String name;
    int age;
    String gender;
    String race;
    String description;
    String img;
    int affiliationId;
    int arcId;
    String quote;

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

}
