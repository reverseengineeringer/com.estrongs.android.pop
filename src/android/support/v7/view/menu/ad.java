package android.support.v7.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.v4.content.a;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

public class ad
  extends i
  implements SubMenu
{
  private i d;
  private m e;
  
  public ad(Context paramContext, i parami, m paramm)
  {
    super(paramContext);
    d = parami;
    e = paramm;
  }
  
  public String a()
  {
    if (e != null) {}
    for (int i = e.getItemId(); i == 0; i = 0) {
      return null;
    }
    return super.a() + ":" + i;
  }
  
  public void a(j paramj)
  {
    d.a(paramj);
  }
  
  boolean a(i parami, MenuItem paramMenuItem)
  {
    return (super.a(parami, paramMenuItem)) || (d.a(parami, paramMenuItem));
  }
  
  public boolean b()
  {
    return d.b();
  }
  
  public boolean c()
  {
    return d.c();
  }
  
  public boolean c(m paramm)
  {
    return d.c(paramm);
  }
  
  public boolean d(m paramm)
  {
    return d.d(paramm);
  }
  
  public MenuItem getItem()
  {
    return e;
  }
  
  public i p()
  {
    return d;
  }
  
  public Menu s()
  {
    return d;
  }
  
  public SubMenu setHeaderIcon(int paramInt)
  {
    super.a(a.a(e(), paramInt));
    return this;
  }
  
  public SubMenu setHeaderIcon(Drawable paramDrawable)
  {
    super.a(paramDrawable);
    return this;
  }
  
  public SubMenu setHeaderTitle(int paramInt)
  {
    super.a(e().getResources().getString(paramInt));
    return this;
  }
  
  public SubMenu setHeaderTitle(CharSequence paramCharSequence)
  {
    super.a(paramCharSequence);
    return this;
  }
  
  public SubMenu setHeaderView(View paramView)
  {
    super.a(paramView);
    return this;
  }
  
  public SubMenu setIcon(int paramInt)
  {
    e.setIcon(paramInt);
    return this;
  }
  
  public SubMenu setIcon(Drawable paramDrawable)
  {
    e.setIcon(paramDrawable);
    return this;
  }
  
  public void setQwertyMode(boolean paramBoolean)
  {
    d.setQwertyMode(paramBoolean);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.view.menu.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */