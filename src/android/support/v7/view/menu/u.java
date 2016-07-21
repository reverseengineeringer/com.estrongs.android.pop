package android.support.v7.view.menu;

import android.content.Context;
import android.view.ActionProvider;
import android.view.ActionProvider.VisibilityListener;
import android.view.MenuItem;
import android.view.View;

class u
  extends p
  implements ActionProvider.VisibilityListener
{
  android.support.v4.view.p c;
  
  public u(t paramt, Context paramContext, ActionProvider paramActionProvider)
  {
    super(paramt, paramContext, paramActionProvider);
  }
  
  public boolean isVisible()
  {
    return a.isVisible();
  }
  
  public void onActionProviderVisibilityChanged(boolean paramBoolean)
  {
    if (c != null) {
      c.a(paramBoolean);
    }
  }
  
  public View onCreateActionView(MenuItem paramMenuItem)
  {
    return a.onCreateActionView(paramMenuItem);
  }
  
  public boolean overridesItemVisibility()
  {
    return a.overridesItemVisibility();
  }
  
  public void refreshVisibility()
  {
    a.refreshVisibility();
  }
  
  public void setVisibilityListener(android.support.v4.view.p paramp)
  {
    c = paramp;
    ActionProvider localActionProvider = a;
    if (paramp != null) {}
    for (paramp = this;; paramp = null)
    {
      localActionProvider.setVisibilityListener(paramp);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.view.menu.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */