package com.estrongs.android.ui.e;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.estrongs.android.pop.utils.cu;
import com.estrongs.android.ui.d.g;
import com.estrongs.android.ui.theme.at;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class a
{
  protected List<com.estrongs.android.view.a.a> a = new LinkedList();
  protected Context b;
  protected ViewGroup c;
  protected boolean d;
  protected boolean e;
  protected at f;
  protected int g = 0;
  private boolean h;
  private int i;
  private int j;
  private boolean k = false;
  private int l;
  
  protected a(Context paramContext, boolean paramBoolean)
  {
    b = paramContext;
    d = paramBoolean;
    e = cu.a(paramContext);
    f = at.a(b);
    h = true;
    l = (getResourcesgetDisplayMetricswidthPixels / 5);
    a = new ArrayList();
    c = new b(this, b);
    ((LinearLayout)c).setOrientation(0);
    ((LinearLayout)c).setGravity(17);
  }
  
  public View a()
  {
    return c;
  }
  
  public com.estrongs.android.view.a.a a(int paramInt)
  {
    try
    {
      com.estrongs.android.view.a.a locala = (com.estrongs.android.view.a.a)a.get(paramInt);
      return locala;
    }
    catch (Exception localException) {}
    return null;
  }
  
  public void a(boolean paramBoolean)
  {
    h = paramBoolean;
  }
  
  public void b(int paramInt)
  {
    g = paramInt;
    if (g != 0)
    {
      Iterator localIterator = a.iterator();
      while (localIterator.hasNext())
      {
        com.estrongs.android.view.a.a locala = (com.estrongs.android.view.a.a)localIterator.next();
        Drawable localDrawable = locala.getIcon();
        if (localDrawable != null) {
          locala.a(g.a(localDrawable, g));
        }
      }
    }
  }
  
  protected boolean b()
  {
    return false;
  }
  
  protected void c() {}
  
  protected void d() {}
  
  public boolean e()
  {
    return false;
  }
  
  public boolean f()
  {
    return false;
  }
  
  public void g() {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */