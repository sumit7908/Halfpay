import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { ApiService } from './api.service';
import { environment } from 'src/environments/environment';


@Injectable({
  providedIn: 'root'
})
export class UserService {

  public user_url = environment.server_url + "/user/";

  constructor(private apiService: ApiService, private http: HttpClient) { }

  //get data of individual user
  getUserData(user_id) {
    return this.apiService.get(this.user_url + user_id);
  }
  //update data of individual user
  updateUserData(user_id, user_dto): Observable<any> {
    return this.apiService.put(this.user_url + user_id, user_dto);
  }
}
