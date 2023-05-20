import { Component } from '@angular/core';

interface NavLink {
  path: string;
  name: string;
}

@Component({
  selector: 'app-navbar',
  templateUrl: './navbar.component.html',
  styleUrls: ['./navbar.component.scss'],
})
export class NavbarComponent {
  title: string = 'AutoPark';
  navLinks: NavLink[] = [
    {
      path: 'entrance',
      name: 'Entrada',
    },
    {
      path: 'exit',
      name: 'Saída',
    },
  ];
}
