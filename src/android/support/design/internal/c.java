package android.support.design.internal;

import android.support.v7.view.menu.i;
import android.support.v7.view.menu.m;
import android.view.View;
import android.view.View.OnClickListener;

class c
  implements View.OnClickListener
{
  c(b paramb) {}
  
  public void onClick(View paramView)
  {
    paramView = (NavigationMenuItemView)paramView;
    a.a(true);
    paramView = paramView.getItemData();
    boolean bool = b.a(a).a(paramView, a, 0);
    if ((paramView != null) && (paramView.isCheckable()) && (bool)) {
      b.b(a).a(paramView);
    }
    a.a(false);
    a.updateMenuView(false);
  }
}

/* Location:
 * Qualified Name:     android.support.design.internal.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */