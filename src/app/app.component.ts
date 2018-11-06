import { Component } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'front';
  denba: Object;
  constructor(private http: HttpClient){}

  getDenba () {
    console.log('denba')
    this.http.get('http://127.0.0.1:8000/').subscribe((data) => this.denba = data );
    //waiting for the back response
    console.log(this.denba);
  }
}
