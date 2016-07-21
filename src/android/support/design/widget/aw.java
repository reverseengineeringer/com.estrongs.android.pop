package android.support.design.widget;

import android.support.v7.view.menu.i;
import android.support.v7.view.menu.j;
import android.view.MenuItem;

class aw
  implements j
{
  aw(NavigationView paramNavigationView) {}
  
  public boolean onMenuItemSelected(i parami, MenuItem paramMenuItem)
  {
    return (NavigationView.a(a) != null) && (NavigationView.a(a).a(paramMenuItem));
  }
  
  public void onMenuModeChange(i parami) {}
}

/* Location:
 * Qualified Name:     android.support.design.widget.aw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */