import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HeaderComponent } from './component/header/header.component';
import { CartComponent } from './component/cart/cart.component';
import { ProductsComponent } from './component/products/products.component';
import { HttpClientModule } from '@angular/common/http';
import { FilterPipe } from './shared/filter.pipe';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { AdvanceEPlanComponent } from './component/e-pay/advance-eplan/advance-eplan.component';
import { GooglePayButtonModule } from '@google-pay/button-angular';
import { UserProfileComponent } from './component/user-profile/user-profile.component';
import { CommonModule } from '@angular/common';
import {SigninSignupComponent} from './component/signin-signup/signin-signup.component';
import { SellerDashboardComponent } from './component/seller-dashboard/seller-dashboard.component';
import { CheckoutComponent } from './component/checkout/checkout.component';
import { BuyerDashboardComponent } from './component/buyer-dashboard/buyer-dashboard.component';
import { LogoutComponent } from './component/logout/logout.component';
import { ProductCrudComponent } from './component/product-crud/product-crud.component';

@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    CartComponent,
    ProductsComponent,
    SigninSignupComponent,
    FilterPipe,
    AdvanceEPlanComponent,
    UserProfileComponent,
    SellerDashboardComponent,
    CheckoutComponent,
    BuyerDashboardComponent,
    LogoutComponent,
    ProductCrudComponent
    
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule,
    ReactiveFormsModule,
    GooglePayButtonModule,
    CommonModule
    
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
