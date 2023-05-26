import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

const routes: Routes = [
  {
    path: 'entrance',
    loadChildren: () =>
      import('./pages/private/entrance/entrance.module').then(
        (m) => m.EntranceModule
      ),
  },
  {
    path: 'exit',
    loadChildren: () =>
      import('./pages/private/exit/exit.module').then((m) => m.ExitModule),
  },
  {
    path: 'authentication',
    loadChildren: () =>
      import('./pages/public/authentication/authentication.module').then(
        (m) => m.AuthenticationModule
      ),
  },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule],
})
export class AppRoutingModule {}
