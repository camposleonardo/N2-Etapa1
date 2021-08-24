List<ListWords>  listWords = [
  ListWords('Acendedores', 'OneWord definition'),
  ListWords('Bongs', 'TwoWord definition.'),
  ListWords('Acessórios', 'TreeWord definition'),
  ListWords('Vapes', 'TreeWord definition'),
  ListWords('Para Enrolar', 'TreeWord definition'),
  ListWords('Bebidas', 'TreeWord definition'),
  ListWords('Pipes', 'TreeWord definition'),
];

class ListWords {
  String titlelist;
  String definitionlist;

  ListWords(String titlelist, String definitionlist) {
    this.titlelist = titlelist;
    this.definitionlist = definitionlist;
  }
}