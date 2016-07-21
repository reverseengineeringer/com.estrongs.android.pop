package com.estrongs.android.view.a;

import android.annotation.TargetApi;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.MenuItem;
import android.view.MenuItem.OnActionExpandListener;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.SubMenu;
import android.view.View;
import android.widget.Button;
import com.estrongs.android.pop.ad;
import com.estrongs.android.ui.e.cp;

public class a
  implements MenuItem
{
  public static final c b = new d();
  c a = b;
  private int c;
  private int d;
  private int e;
  private Drawable f;
  private CharSequence g;
  private Intent h;
  private boolean i;
  private MenuItem.OnMenuItemClickListener j;
  private e k;
  private b l;
  private View m;
  private boolean n = true;
  private int o = Color.rgb(232, 232, 232);
  private int p = 0;
  private boolean q = true;
  private boolean r = false;
  
  public a(int paramInt1, int paramInt2)
  {
    d = paramInt1;
    e = paramInt2;
  }
  
  public a(int paramInt, String paramString)
  {
    d = paramInt;
    g = paramString;
  }
  
  public a(Drawable paramDrawable, String paramString)
  {
    f = paramDrawable;
    if (f != null) {
      f.mutate();
    }
    g = paramString;
  }
  
  public int a()
  {
    return e;
  }
  
  public a a(char paramChar)
  {
    return this;
  }
  
  public a a(char paramChar1, char paramChar2)
  {
    return this;
  }
  
  public a a(int paramInt)
  {
    throw new IllegalArgumentException("Method is abandoned ! ");
  }
  
  public a a(Intent paramIntent)
  {
    h = paramIntent;
    return this;
  }
  
  public a a(Drawable paramDrawable)
  {
    f = paramDrawable;
    if (f != null) {
      f.mutate();
    }
    if (m != null) {
      try
      {
        paramDrawable = (Button)m.findViewById(2131625174);
        paramDrawable.setCompoundDrawablePadding(0);
        if (ad.a(m.getContext()).at())
        {
          paramDrawable.setCompoundDrawables(null, f, null, null);
          return this;
        }
        paramDrawable.setCompoundDrawables(f, null, null, null);
        return this;
      }
      catch (Exception paramDrawable)
      {
        paramDrawable.printStackTrace();
      }
    }
    return this;
  }
  
  public a a(MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    j = paramOnMenuItemClickListener;
    return this;
  }
  
  public a a(b paramb)
  {
    l = paramb;
    return this;
  }
  
  public a a(CharSequence paramCharSequence)
  {
    g = paramCharSequence;
    if (m != null) {
      try
      {
        boolean bool = ad.a(m.getContext()).at();
        Button localButton = (Button)m.findViewById(2131625174);
        if (bool) {}
        for (paramCharSequence = g;; paramCharSequence = "")
        {
          localButton.setText(paramCharSequence);
          if (o == -1) {
            break;
          }
          localButton.setTextColor(o);
          return this;
        }
        return this;
      }
      catch (Exception paramCharSequence)
      {
        paramCharSequence.printStackTrace();
      }
    }
  }
  
  public a a(boolean paramBoolean)
  {
    i = paramBoolean;
    return this;
  }
  
  public void a(View paramView)
  {
    m = paramView;
    if (m != null)
    {
      paramView = m;
      if (!n) {
        break label32;
      }
    }
    label32:
    for (int i1 = 0;; i1 = 4)
    {
      paramView.setVisibility(i1);
      return;
    }
  }
  
  public void a(e parame)
  {
    k = parame;
  }
  
  public boolean a(cp paramcp)
  {
    if (l == null) {
      return true;
    }
    return l.a(paramcp);
  }
  
  public int b()
  {
    return d;
  }
  
  public a b(char paramChar)
  {
    return this;
  }
  
  public a b(int paramInt)
  {
    throw new IllegalArgumentException("Method is abandoned ! ");
  }
  
  public a b(CharSequence paramCharSequence)
  {
    return null;
  }
  
  public a b(boolean paramBoolean)
  {
    return this;
  }
  
  public MenuItem.OnMenuItemClickListener c()
  {
    return j;
  }
  
  public a c(int paramInt)
  {
    o = paramInt;
    try
    {
      Button localButton = (Button)m.findViewById(2131625174);
      if (o != -1) {
        localButton.setTextColor(o);
      }
      return this;
    }
    catch (Exception localException) {}
    return this;
  }
  
  public a c(boolean paramBoolean)
  {
    n = paramBoolean;
    View localView;
    if (m != null)
    {
      localView = m;
      if (!paramBoolean) {
        break label30;
      }
    }
    label30:
    for (int i1 = 0;; i1 = 8)
    {
      localView.setVisibility(i1);
      return this;
    }
  }
  
  public boolean collapseActionView()
  {
    return false;
  }
  
  public a d(boolean paramBoolean)
  {
    q = paramBoolean;
    if (m != null) {
      try
      {
        m.setEnabled(paramBoolean);
        if (paramBoolean)
        {
          if (f != null) {
            f.setAlpha(255);
          }
          ((Button)m.findViewById(2131625174)).setTextColor(o);
          return this;
        }
        if (f != null) {
          f.setAlpha(120);
        }
        ((Button)m.findViewById(2131625174)).setTextColor(-7829368);
        return this;
      }
      catch (Exception localException) {}
    }
    return this;
  }
  
  public e d()
  {
    return k;
  }
  
  public void d(int paramInt)
  {
    p = paramInt;
  }
  
  public void e()
  {
    if (k != null) {
      k.a(this);
    }
  }
  
  public void e(boolean paramBoolean)
  {
    r = paramBoolean;
  }
  
  public boolean expandActionView()
  {
    return false;
  }
  
  public void f()
  {
    if (j != null) {
      j.onMenuItemClick(this);
    }
  }
  
  public View g()
  {
    return m;
  }
  
  @TargetApi(14)
  public ActionProvider getActionProvider()
  {
    return null;
  }
  
  public View getActionView()
  {
    return null;
  }
  
  public char getAlphabeticShortcut()
  {
    return '\000';
  }
  
  public int getGroupId()
  {
    return 0;
  }
  
  public Drawable getIcon()
  {
    return f;
  }
  
  public Intent getIntent()
  {
    return h;
  }
  
  public int getItemId()
  {
    return c;
  }
  
  public ContextMenu.ContextMenuInfo getMenuInfo()
  {
    return null;
  }
  
  public char getNumericShortcut()
  {
    return '\000';
  }
  
  public int getOrder()
  {
    return 0;
  }
  
  public SubMenu getSubMenu()
  {
    return null;
  }
  
  public CharSequence getTitle()
  {
    return g;
  }
  
  public CharSequence getTitleCondensed()
  {
    return null;
  }
  
  public int h()
  {
    return p;
  }
  
  public boolean hasSubMenu()
  {
    return false;
  }
  
  public boolean i()
  {
    return r;
  }
  
  public boolean isActionViewExpanded()
  {
    return false;
  }
  
  public boolean isCheckable()
  {
    return i;
  }
  
  public boolean isChecked()
  {
    return false;
  }
  
  public boolean isEnabled()
  {
    return q;
  }
  
  public boolean isVisible()
  {
    return n;
  }
  
  @TargetApi(14)
  public MenuItem setActionProvider(ActionProvider paramActionProvider)
  {
    return null;
  }
  
  public MenuItem setActionView(int paramInt)
  {
    return null;
  }
  
  public MenuItem setActionView(View paramView)
  {
    return null;
  }
  
  @TargetApi(14)
  public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener paramOnActionExpandListener)
  {
    return null;
  }
  
  public void setShowAsAction(int paramInt) {}
  
  public MenuItem setShowAsActionFlags(int paramInt)
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */