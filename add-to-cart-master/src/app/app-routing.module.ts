import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { GooglePayButtonComponent } from '@google-pay/button-angular';
import { CartComponent } from './component/cart/cart.component';
import { AdvanceEPlanComponent } from './component/e-pay/advance-eplan/advance-eplan.component';
import { ProductsComponent } from './component/products/products.component';

const routes: Routes = [
  {path:'', redirectTo:'products',pathMatch:'full'},
  {path:'products', component: ProductsComponent},
  {path:'cart', component: CartComponent},
  {path:'payment', component: AdvanceEPlanComponent},
  {path:'gpay', component: GooglePayButtonComponent},
  


];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
