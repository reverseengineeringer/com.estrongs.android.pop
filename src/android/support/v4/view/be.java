package android.support.v4.view;

import android.view.MenuItem;
import android.view.View;

class be
{
  public static MenuItem a(MenuItem paramMenuItem, View paramView)
  {
    return paramMenuItem.setActionView(paramView);
  }
  
  public static View a(MenuItem paramMenuItem)
  {
    return paramMenuItem.getActionView();
  }
  
  public static void a(MenuItem paramMenuItem, int paramInt)
  {
    paramMenuItem.setShowAsAction(paramInt);
  }
  
  public static MenuItem b(MenuItem paramMenuItem, int paramInt)
  {
    return paramMenuItem.setActionView(paramInt);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.be
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */