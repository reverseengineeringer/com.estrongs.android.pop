package android.support.v7.view.menu;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

class s
  extends f<MenuItem.OnMenuItemClickListener>
  implements MenuItem.OnMenuItemClickListener
{
  s(o paramo, MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    super(paramOnMenuItemClickListener);
  }
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    return ((MenuItem.OnMenuItemClickListener)b).onMenuItemClick(a.a(paramMenuItem));
  }
}

/* Location:
 * Qualified Name:     android.support.v7.view.menu.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */