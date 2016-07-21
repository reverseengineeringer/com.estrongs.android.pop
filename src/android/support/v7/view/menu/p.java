package android.support.v7.view.menu;

import android.content.Context;
import android.support.v4.view.n;
import android.view.ActionProvider;
import android.view.SubMenu;
import android.view.View;

class p
  extends n
{
  final ActionProvider a;
  
  public p(o paramo, Context paramContext, ActionProvider paramActionProvider)
  {
    super(paramContext);
    a = paramActionProvider;
  }
  
  public boolean hasSubMenu()
  {
    return a.hasSubMenu();
  }
  
  public View onCreateActionView()
  {
    return a.onCreateActionView();
  }
  
  public boolean onPerformDefaultAction()
  {
    return a.onPerformDefaultAction();
  }
  
  public void onPrepareSubMenu(SubMenu paramSubMenu)
  {
    a.onPrepareSubMenu(b.a(paramSubMenu));
  }
}

/* Location:
 * Qualified Name:     android.support.v7.view.menu.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */