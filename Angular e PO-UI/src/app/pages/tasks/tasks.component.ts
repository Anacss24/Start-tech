import { Component, OnInit } from '@angular/core';
import { Observable } from 'rxjs';
import { TasksService } from '../../shared/services/tasks/services/tasks.service';
import { Router } from '@angular/router';
import { PoPageDynamicTableActions } from '@po-ui/ng-templates';

@Component ({
  selector: 'app-tasks',
  templateUrl: './tasks.component.html',
  styleUrls: ['./tasks.component.css']
})

export class TasksComponent implements OnInit {
  tituloBotao: string = 'Meu Botão alterado';
  tasks$!: Observable<any>;
  columns: Array<string> = ['id', 'title', 'category', 'status'];

  readonly fields: Array<any> = [
    {property: 'id', key: true, label: 'Código'},
    {property: 'title', label: 'Título'},
    {property: 'category', label: 'Categoria' },
    {property: 'status', label: 'Status' },
  ];

  readonly actions: PoPageDynamicTableActions = {
    new: '/tasks-form',
    remove: true,
    // removeAll: true,
    edit: '/tasks-form/:id'
  };

  constructor(
    private tasksService: TasksService,
    private router: Router
  ) { }

  ngOnInit() {
    this.tasks$ = this.tasksService.get();
  }

  getColumnTitle(columnName: string): string {
    switch(columnName) {
      case 'id':
        return 'Código';
      case 'title':
        return 'Título';
      case 'category':
        return 'Categoria';
      case 'status':
        return 'Status';
      default:
        return '';
    }
  }

  getColumnData(columnName: string, element: any): any {
    switch(columnName) {
      case 'id':
        return element.id;
      case 'title':
        return element.title;
      case 'category':
        return element.category;
      case 'status':
        return element.status;
      default:
        return '';
    }
  }

  goToForm(): void {
    this.router.navigate(['/tasks-form']);
  }

  minhaFuncao(): void {
    alert('Cliquei no botão')
  }



}