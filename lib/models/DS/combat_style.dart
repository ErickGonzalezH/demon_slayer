class CombatStyle {
    Pagination1 pagination;
    List<Content1> content;

    CombatStyle({
        required this.pagination,
        required this.content,
    });

}

class Content1 {
    int id;
    String name;
    String description;
    String img;
    List<CombatStyleCharacter> combatStyleCharacter;

    Content1({
        required this.id,
        required this.name,
        required this.description,
        required this.img,
        required this.combatStyleCharacter,
    });

}

class CombatStyleCharacter {
    int id;
    String name;
    String description;

    CombatStyleCharacter({
        required this.id,
        required this.name,
        required this.description,
    });

}

class Pagination1 {
    int totalElements;
    int elementsOnPage;
    int currentPage;
    int totalPages;
    String previousPage;
    String nextPage;

    Pagination1({
        required this.totalElements,
        required this.elementsOnPage,
        required this.currentPage,
        required this.totalPages,
        required this.previousPage,
        required this.nextPage,
    });

}
