package android.support.v4.c.a;

import android.support.v4.view.bd;
import android.support.v4.view.n;
import android.view.MenuItem;
import android.view.View;

public abstract interface b
  extends MenuItem
{
  public abstract b a(bd parambd);
  
  public abstract b a(n paramn);
  
  public abstract n a();
  
  public abstract boolean collapseActionView();
  
  public abstract boolean expandActionView();
  
  public abstract View getActionView();
  
  public abstract boolean isActionViewExpanded();
  
  public abstract MenuItem setActionView(int paramInt);
  
  public abstract MenuItem setActionView(View paramView);
  
  public abstract void setShowAsAction(int paramInt);
  
  public abstract MenuItem setShowAsActionFlags(int paramInt);
}

/* Location:
 * Qualified Name:     android.support.v4.c.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */