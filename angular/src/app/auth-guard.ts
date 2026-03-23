import { inject } from '@angular/core';
import { createAuthGuard } from 'keycloak-angular';
import { AuthService } from './auth-service';

export const authGuard = createAuthGuard(async (route, state, authData) => {
  const { authenticated, keycloak } = authData;
  const authService = inject(AuthService);

  authService.setKeycloak(keycloak);

  if (!authenticated) {
    await keycloak.login({
      redirectUri: window.location.origin + state.url,
    });
    return false;
  }

  return true;
});
