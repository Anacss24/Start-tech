import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { VariavelComponent } from "./components/variavel/variavel.component";


@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterOutlet, VariavelComponent],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {
  title = 'projeto-final';
}
