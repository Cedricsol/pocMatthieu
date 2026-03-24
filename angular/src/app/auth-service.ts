import { HttpInterceptorFn } from '@angular/common/http';
import { Injectable } from '@angular/core';
import Keycloak from 'keycloak-js';

@Injectable({
  providedIn: 'root',
})
export class AuthService {
  private keycloak!: Keycloak;

  getKeycloak() {
    return this.keycloak;
  }

  setKeycloak(kc: Keycloak) {
    this.keycloak = kc;
  }

  logout() {
    this.keycloak.logout({
      redirectUri: window.location.origin,
    });
  }

  isLoggedIn(): boolean {
    return !!this.keycloak.authenticated;
  }
}
