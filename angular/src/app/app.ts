import { Component, inject, signal } from '@angular/core';
import { RouterLink, RouterOutlet } from '@angular/router';
import { AuthService } from './auth-service';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-root',
  imports: [RouterOutlet, RouterLink],
  templateUrl: './app.html',
  styleUrl: './app.css',
})
export class App {
  protected readonly title = signal('angular');
  private authService = inject(AuthService);

  constructor(private http: HttpClient) {}

  logout() {
    fetch('http://localhost:8080/logout', {
      method: 'POST',
      credentials: 'include',
    }).finally(() => {
      this.authService.logout();
    });
  }
}
