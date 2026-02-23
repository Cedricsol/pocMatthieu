import { CommonModule } from '@angular/common';
import { Component } from '@angular/core';
import { Book } from '../book';
import { BookService } from '../book-service';

@Component({
  selector: 'app-view-books',
  imports: [CommonModule],
  templateUrl: './view-books.html',
  styleUrl: './view-books.css',
  standalone: true,
})
export class ViewBooks {
  books: Book[] = [];

  constructor(private bookService: BookService) {
    this.books = this.bookService.getBooks();
  }
}
