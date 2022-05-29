import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators, FormsModule } from '@angular/forms';
import { RouterModule, Router } from '@angular/router';
import { User } from 'src/app/model/user';
import { LoginSignupService } from 'src/app/service/login-signup.service';

@Component({
  selector: 'app-signin-signup',
  templateUrl: './signin-signup.component.html',
  styleUrls: ['./signin-signup.component.scss']
})
export class SigninSignupComponent implements OnInit {

  regForm: Boolean = false;
  signUpform: FormGroup;
  signInform: FormGroup;
  signUpsubmitted = false;
  href: String = '';
  user_data;
  user_dto: User;
  user_reg_data;

  signInFormValue: any = {};

  constructor(private formBuilder: FormBuilder, private router: Router, private logsign_service: LoginSignupService) { }

  ngOnInit() {
    this.href = this.router.url;
    if (this.href == '/sign-up') {
      this.regForm = true;
    } else if (this.href == '/sign-in') {
      this.regForm = false;
    }

    this.signUpform = this.formBuilder.group({
      fname: ['', Validators.required],
      lname: [],
      mobNumber: ['', Validators.required],     
      email: ['', [Validators.required, Validators.email]],
      password: ['', [Validators.required, Validators.minLength(6)]],
      addLine1: ['', Validators.required],
      city: ['', Validators.required],
      country: ['', Validators.required],
      state: ['', Validators.required],
      zipCode: ['', Validators.required],
     

    })

    this.signInform = this.formBuilder.group({

    })
  }

  get rf() { 
    return this.signUpform.controls; 
  }

  onSubmitSignUp() {
    this.signUpsubmitted = true;
    if (this.signUpform.invalid) {
      return;
    }
 
    this.user_reg_data = this.signUpform.value;
    this.user_dto = {
    
      email: this.user_reg_data.email,
      address: {
        id: 0,
        addLine1: this.user_reg_data.addLine1,
        city: this.user_reg_data.city,
        state: this.user_reg_data.state,

        country: this.user_reg_data.country,
        zipCode: this.user_reg_data.zipCode,
      },
      mobNumber: this.user_reg_data.mobNumber,
      fname: this.user_reg_data.fname,
      lname: this.user_reg_data.lname,

      password: this.user_reg_data.password,
     
    }
    this.logsign_service.userRegister(this.user_dto).subscribe(data => {
      alert("Success");
      this.router.navigateByUrl('/sign-in');
    }, err => {
      alert("Some Error Occured");
    })
  }

  onSubmitSignIn() {
    this.logsign_service.authLogin(this.signInFormValue.userEmail, this.signInFormValue.userPassword).subscribe(data => {
      this.user_data = data;
      if (this.user_data.length == 1) {
        /**if (this.user_data[0].role == "seller") {
          sessionStorage.setItem("user_session_id", this.user_data[0].id);
          sessionStorage.setItem("role", this.user_data[0].role);
          this.router.navigateByUrl('/seller-dashboard');
        } else if (this.user_data[0].role == "buyer") {
          sessionStorage.setItem("user_session_id", this.user_data[0].id);
          sessionStorage.setItem("role", this.user_data[0].role);
          this.router.navigateByUrl('/buyer-dashboard');
        } else {
          alert("Invalid-user-role")
        }**/
      } else {
        alert("Invalid")
      }
      console.log(this.user_data);

    }, error => {
      console.log("My error", error);
    })
  }

}
