package android.support.v7.view.menu;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.c.a.b;
import android.support.v4.view.bd;
import android.support.v7.widget.AppCompatDrawableManager;
import android.util.Log;
import android.view.ActionProvider;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.MenuItem.OnActionExpandListener;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewDebug.CapturedViewProperty;
import android.widget.LinearLayout;

public final class m
  implements b
{
  private static String w;
  private static String x;
  private static String y;
  private static String z;
  private final int a;
  private final int b;
  private final int c;
  private final int d;
  private CharSequence e;
  private CharSequence f;
  private Intent g;
  private char h;
  private char i;
  private Drawable j;
  private int k = 0;
  private i l;
  private ad m;
  private Runnable n;
  private MenuItem.OnMenuItemClickListener o;
  private int p = 16;
  private int q = 0;
  private View r;
  private android.support.v4.view.n s;
  private bd t;
  private boolean u = false;
  private ContextMenu.ContextMenuInfo v;
  
  m(i parami, int paramInt1, int paramInt2, int paramInt3, int paramInt4, CharSequence paramCharSequence, int paramInt5)
  {
    l = parami;
    a = paramInt2;
    b = paramInt1;
    c = paramInt3;
    d = paramInt4;
    e = paramCharSequence;
    q = paramInt5;
  }
  
  public b a(int paramInt)
  {
    Context localContext = l.e();
    a(LayoutInflater.from(localContext).inflate(paramInt, new LinearLayout(localContext), false));
    return this;
  }
  
  public b a(bd parambd)
  {
    t = parambd;
    return this;
  }
  
  public b a(android.support.v4.view.n paramn)
  {
    if (s != null) {
      s.reset();
    }
    r = null;
    s = paramn;
    l.a(true);
    if (s != null) {
      s.setVisibilityListener(new n(this));
    }
    return this;
  }
  
  public b a(View paramView)
  {
    r = paramView;
    s = null;
    if ((paramView != null) && (paramView.getId() == -1) && (a > 0)) {
      paramView.setId(a);
    }
    l.b(this);
    return this;
  }
  
  public android.support.v4.view.n a()
  {
    return s;
  }
  
  CharSequence a(aa paramaa)
  {
    if ((paramaa != null) && (paramaa.b())) {
      return getTitleCondensed();
    }
    return getTitle();
  }
  
  public void a(ad paramad)
  {
    m = paramad;
    paramad.setHeaderTitle(getTitle());
  }
  
  void a(ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    v = paramContextMenuInfo;
  }
  
  public void a(boolean paramBoolean)
  {
    int i2 = p;
    if (paramBoolean) {}
    for (int i1 = 4;; i1 = 0)
    {
      p = (i1 | i2 & 0xFFFFFFFB);
      return;
    }
  }
  
  public b b(int paramInt)
  {
    setShowAsAction(paramInt);
    return this;
  }
  
  void b(boolean paramBoolean)
  {
    int i2 = p;
    int i3 = p;
    if (paramBoolean) {}
    for (int i1 = 2;; i1 = 0)
    {
      p = (i1 | i3 & 0xFFFFFFFD);
      if (i2 != p) {
        l.a(false);
      }
      return;
    }
  }
  
  public boolean b()
  {
    if ((o != null) && (o.onMenuItemClick(this))) {}
    do
    {
      do
      {
        return true;
      } while (l.a(l.p(), this));
      if (n != null)
      {
        n.run();
        return true;
      }
      if (g != null) {
        try
        {
          l.e().startActivity(g);
          return true;
        }
        catch (ActivityNotFoundException localActivityNotFoundException)
        {
          Log.e("MenuItemImpl", "Can't find activity to handle intent; ignoring", localActivityNotFoundException);
        }
      }
    } while ((s != null) && (s.onPerformDefaultAction()));
    return false;
  }
  
  public int c()
  {
    return d;
  }
  
  boolean c(boolean paramBoolean)
  {
    boolean bool = false;
    int i2 = p;
    int i3 = p;
    if (paramBoolean) {}
    for (int i1 = 0;; i1 = 8)
    {
      p = (i1 | i3 & 0xFFFFFFF7);
      paramBoolean = bool;
      if (i2 != p) {
        paramBoolean = true;
      }
      return paramBoolean;
    }
  }
  
  public boolean collapseActionView()
  {
    if ((q & 0x8) == 0) {}
    do
    {
      return false;
      if (r == null) {
        return true;
      }
    } while ((t != null) && (!t.b(this)));
    return l.d(this);
  }
  
  char d()
  {
    if (l.b()) {
      return i;
    }
    return h;
  }
  
  public void d(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      p |= 0x20;
      return;
    }
    p &= 0xFFFFFFDF;
  }
  
  String e()
  {
    char c1 = d();
    if (c1 == 0) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder(w);
    switch (c1)
    {
    default: 
      localStringBuilder.append(c1);
    }
    for (;;)
    {
      return localStringBuilder.toString();
      localStringBuilder.append(x);
      continue;
      localStringBuilder.append(y);
      continue;
      localStringBuilder.append(z);
    }
  }
  
  public void e(boolean paramBoolean)
  {
    u = paramBoolean;
    l.a(false);
  }
  
  public boolean expandActionView()
  {
    if (!n()) {}
    while ((t != null) && (!t.a(this))) {
      return false;
    }
    return l.c(this);
  }
  
  boolean f()
  {
    return (l.c()) && (d() != 0);
  }
  
  public boolean g()
  {
    return (p & 0x4) != 0;
  }
  
  public ActionProvider getActionProvider()
  {
    throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
  }
  
  public View getActionView()
  {
    if (r != null) {
      return r;
    }
    if (s != null)
    {
      r = s.onCreateActionView(this);
      return r;
    }
    return null;
  }
  
  public char getAlphabeticShortcut()
  {
    return i;
  }
  
  public int getGroupId()
  {
    return b;
  }
  
  public Drawable getIcon()
  {
    if (j != null) {
      return j;
    }
    if (k != 0)
    {
      Drawable localDrawable = AppCompatDrawableManager.get().getDrawable(l.e(), k);
      k = 0;
      j = localDrawable;
      return localDrawable;
    }
    return null;
  }
  
  public Intent getIntent()
  {
    return g;
  }
  
  @ViewDebug.CapturedViewProperty
  public int getItemId()
  {
    return a;
  }
  
  public ContextMenu.ContextMenuInfo getMenuInfo()
  {
    return v;
  }
  
  public char getNumericShortcut()
  {
    return h;
  }
  
  public int getOrder()
  {
    return c;
  }
  
  public SubMenu getSubMenu()
  {
    return m;
  }
  
  @ViewDebug.CapturedViewProperty
  public CharSequence getTitle()
  {
    return e;
  }
  
  public CharSequence getTitleCondensed()
  {
    if (f != null) {}
    for (CharSequence localCharSequence = f;; localCharSequence = e)
    {
      Object localObject = localCharSequence;
      if (Build.VERSION.SDK_INT < 18)
      {
        localObject = localCharSequence;
        if (localCharSequence != null)
        {
          localObject = localCharSequence;
          if (!(localCharSequence instanceof String)) {
            localObject = localCharSequence.toString();
          }
        }
      }
      return (CharSequence)localObject;
    }
  }
  
  public void h()
  {
    l.b(this);
  }
  
  public boolean hasSubMenu()
  {
    return m != null;
  }
  
  public boolean i()
  {
    return l.q();
  }
  
  public boolean isActionViewExpanded()
  {
    return u;
  }
  
  public boolean isCheckable()
  {
    return (p & 0x1) == 1;
  }
  
  public boolean isChecked()
  {
    return (p & 0x2) == 2;
  }
  
  public boolean isEnabled()
  {
    return (p & 0x10) != 0;
  }
  
  public boolean isVisible()
  {
    if ((s != null) && (s.overridesItemVisibility())) {
      if (((p & 0x8) != 0) || (!s.isVisible())) {}
    }
    while ((p & 0x8) == 0)
    {
      return true;
      return false;
    }
    return false;
  }
  
  public boolean j()
  {
    return (p & 0x20) == 32;
  }
  
  public boolean k()
  {
    return (q & 0x1) == 1;
  }
  
  public boolean l()
  {
    return (q & 0x2) == 2;
  }
  
  public boolean m()
  {
    return (q & 0x4) == 4;
  }
  
  public boolean n()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((q & 0x8) != 0)
    {
      if ((r == null) && (s != null)) {
        r = s.onCreateActionView(this);
      }
      bool1 = bool2;
      if (r != null) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public MenuItem setActionProvider(ActionProvider paramActionProvider)
  {
    throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
  }
  
  public MenuItem setAlphabeticShortcut(char paramChar)
  {
    if (i == paramChar) {
      return this;
    }
    i = Character.toLowerCase(paramChar);
    l.a(false);
    return this;
  }
  
  public MenuItem setCheckable(boolean paramBoolean)
  {
    int i2 = p;
    int i3 = p;
    if (paramBoolean) {}
    for (int i1 = 1;; i1 = 0)
    {
      p = (i1 | i3 & 0xFFFFFFFE);
      if (i2 != p) {
        l.a(false);
      }
      return this;
    }
  }
  
  public MenuItem setChecked(boolean paramBoolean)
  {
    if ((p & 0x4) != 0)
    {
      l.a(this);
      return this;
    }
    b(paramBoolean);
    return this;
  }
  
  public MenuItem setEnabled(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (p |= 0x10;; p &= 0xFFFFFFEF)
    {
      l.a(false);
      return this;
    }
  }
  
  public MenuItem setIcon(int paramInt)
  {
    j = null;
    k = paramInt;
    l.a(false);
    return this;
  }
  
  public MenuItem setIcon(Drawable paramDrawable)
  {
    k = 0;
    j = paramDrawable;
    l.a(false);
    return this;
  }
  
  public MenuItem setIntent(Intent paramIntent)
  {
    g = paramIntent;
    return this;
  }
  
  public MenuItem setNumericShortcut(char paramChar)
  {
    if (h == paramChar) {
      return this;
    }
    h = paramChar;
    l.a(false);
    return this;
  }
  
  public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener paramOnActionExpandListener)
  {
    throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setOnActionExpandListener()");
  }
  
  public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    o = paramOnMenuItemClickListener;
    return this;
  }
  
  public MenuItem setShortcut(char paramChar1, char paramChar2)
  {
    h = paramChar1;
    i = Character.toLowerCase(paramChar2);
    l.a(false);
    return this;
  }
  
  public void setShowAsAction(int paramInt)
  {
    switch (paramInt & 0x3)
    {
    default: 
      throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
    }
    q = paramInt;
    l.b(this);
  }
  
  public MenuItem setTitle(int paramInt)
  {
    return setTitle(l.e().getString(paramInt));
  }
  
  public MenuItem setTitle(CharSequence paramCharSequence)
  {
    e = paramCharSequence;
    l.a(false);
    if (m != null) {
      m.setHeaderTitle(paramCharSequence);
    }
    return this;
  }
  
  public MenuItem setTitleCondensed(CharSequence paramCharSequence)
  {
    f = paramCharSequence;
    if (paramCharSequence == null) {
      paramCharSequence = e;
    }
    l.a(false);
    return this;
  }
  
  public MenuItem setVisible(boolean paramBoolean)
  {
    if (c(paramBoolean)) {
      l.a(this);
    }
    return this;
  }
  
  public String toString()
  {
    if (e != null) {
      return e.toString();
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.view.menu.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */