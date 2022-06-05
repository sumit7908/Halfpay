import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { GooglePayButtonComponent } from '@google-pay/button-angular';
import { CartComponent } from './component/cart/cart.component';
import { AdvanceEPlanComponent } from './component/e-pay/advance-eplan/advance-eplan.component';
import { ProductsComponent } from './component/products/products.component';
import { SigninSignupComponent } from './component/signin-signup/signin-signup.component';
import { UserProfileComponent } from './component/user-profile/user-profile.component';
import { SellerDashboardComponent } from './component/seller-dashboard/seller-dashboard.component';
import { BuyerDashboardComponent } from './component/buyer-dashboard/buyer-dashboard.component';
import { CheckoutComponent } from './component/checkout/checkout.component';
import { LogoutComponent } from './component/logout/logout.component';
import { ProductCrudComponent } from './component/product-crud/product-crud.component';

const routes: Routes = [
  {path:'', redirectTo:'products',pathMatch:'full'},
  {path:'products', component: ProductsComponent},
  {path:'cart', component: CartComponent},
  {path:'payment', component: AdvanceEPlanComponent},
  {path:'gpay', component: GooglePayButtonComponent},
  { path: "my-profile", component: UserProfileComponent },
  { path: "sign-in", component: SigninSignupComponent },
  { path: "sign-up", component: SigninSignupComponent },
  { path: "seller-dashboard", component: SellerDashboardComponent },
  { path: "buyer-dashboard", component: BuyerDashboardComponent},
  { path: "checkout", component: CheckoutComponent },
  { path: "logout", component: LogoutComponent },
  { path: "sell", component: ProductCrudComponent},
  
  



];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
