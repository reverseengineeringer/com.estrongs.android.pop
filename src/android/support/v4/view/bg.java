package android.support.v4.view;

import android.view.MenuItem;
import android.view.MenuItem.OnActionExpandListener;

class bg
  implements MenuItem.OnActionExpandListener
{
  private bh a;
  
  public bg(bh parambh)
  {
    a = parambh;
  }
  
  public boolean onMenuItemActionCollapse(MenuItem paramMenuItem)
  {
    return a.b(paramMenuItem);
  }
  
  public boolean onMenuItemActionExpand(MenuItem paramMenuItem)
  {
    return a.a(paramMenuItem);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.bg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */