import { Component } from '@angular/core';
import { Book } from '../book';
import { FormsModule } from '@angular/forms';
import { BookService } from '../book-service';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-add-book',
  imports: [FormsModule, CommonModule],
  templateUrl: './add-book.html',
  styleUrls: ['../forms.css', './add-book.css'],
  standalone: true,
})
export class AddBook {
  book: Book = new Book('', '', '');
  message: string = '';

  constructor(private bookService: BookService) {}

  onSubmit() {
    this.bookService.addBook(this.book);
    this.message = 'Successfully added Book with ISBN: ' + this.book.isbn;
    this.book = new Book('', '', '');
  }
}
