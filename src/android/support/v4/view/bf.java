package android.support.v4.view;

import android.view.MenuItem;

class bf
{
  public static MenuItem a(MenuItem paramMenuItem, bh parambh)
  {
    return paramMenuItem.setOnActionExpandListener(new bg(parambh));
  }
  
  public static boolean a(MenuItem paramMenuItem)
  {
    return paramMenuItem.expandActionView();
  }
  
  public static boolean b(MenuItem paramMenuItem)
  {
    return paramMenuItem.collapseActionView();
  }
  
  public static boolean c(MenuItem paramMenuItem)
  {
    return paramMenuItem.isActionViewExpanded();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.bf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */