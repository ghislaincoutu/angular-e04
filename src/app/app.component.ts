import { Component } from '@angular/core';
import { CommonModule } from '@angular/common';
import { MatGridListModule } from '@angular/material/grid-list';
import { MatSlideToggleModule } from '@angular/material/slide-toggle';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [CommonModule, MatGridListModule, MatSlideToggleModule],
  templateUrl: './app.component.html',
  styleUrl: './app.component.scss'
})
export class AppComponent {
  title = 'angular-e04';
}
