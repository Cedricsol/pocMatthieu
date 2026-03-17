import { Injectable } from '@angular/core';
import { Book } from './book';

@Injectable({
  providedIn: 'root',
})
export class BookService {
  books: Book[] = [];

  getBooks() {
    return this.books;
  }

  addBook(book: Book) {
    this.books.push(book);
  }
}
