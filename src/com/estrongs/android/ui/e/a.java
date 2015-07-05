package com.estrongs.android.ui.e;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.estrongs.android.pop.utils.cl;
import com.estrongs.android.ui.theme.al;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

public class a
{
  protected List<com.estrongs.android.view.a.a> a = new LinkedList();
  protected Context b;
  protected ViewGroup c;
  protected boolean d;
  protected boolean e;
  protected al f;
  private boolean g;
  private int h;
  private int i;
  private boolean j = false;
  private int k;
  
  protected a(Context paramContext, boolean paramBoolean)
  {
    b = paramContext;
    d = paramBoolean;
    e = cl.a(paramContext);
    f = al.a(b);
    g = true;
    k = (getResourcesgetDisplayMetricswidthPixels / 5);
    a = new ArrayList();
    c = new b(this, b);
    paramContext = (LinearLayout)c;
    if (paramBoolean) {}
    for (;;)
    {
      paramContext.setOrientation(m);
      ((LinearLayout)c).setGravity(17);
      return;
      m = 1;
    }
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
    g = paramBoolean;
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