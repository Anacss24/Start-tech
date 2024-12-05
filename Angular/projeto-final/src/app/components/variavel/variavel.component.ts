import { Component } from '@angular/core';

@Component({
  selector: 'app-variavel',
  standalone: true,
  imports: [],
  templateUrl: './variavel.component.html',
  styleUrl: './variavel.component.css'
})
export class VariavelComponent {
 nome: string = "Ana"
 idade: number = 23;

 
 qualquerCoisa: any[] = ['Bia', 43, true]

}
