export class Book {
  isbn: string;
  name: string;
  author: string;

  constructor(isbn: string, name: string, author: string) {
    this.isbn = isbn;
    this.name = name;
    this.author = author;
  }
}
