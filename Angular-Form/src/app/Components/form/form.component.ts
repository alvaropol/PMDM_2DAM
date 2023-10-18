import { Component } from '@angular/core';

@Component({
  selector: 'app-form',
  templateUrl: './form.component.html',
  styleUrls: ['./form.component.css']
})
export class FormComponent {

  firstName: string = ""
  lastName: string = ""
  nif: string = ""
  email: string = ""
  sex: string = ""
  select2: string = ""
  phoneNumber: string = ""
  password: string = ""
  confirmPassword: string = ""

  onSubmit() {
    console.log(this.firstName, this.lastName, this.nif, this.email, this.sex, this.select2, this.phoneNumber, this.password, this.confirmPassword);
  }
}
