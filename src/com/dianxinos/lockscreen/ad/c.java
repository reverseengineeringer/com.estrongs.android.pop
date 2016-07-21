package com.dianxinos.lockscreen.ad;

import android.content.Context;
import com.dianxinos.lockscreen.ad.extra.ADCardController;
import com.dianxinos.lockscreen.c.f;
import com.dianxinos.lockscreen.c.g;

public class c
{
  public static c a;
  private boolean b;
  private ADCardController c;
  private d d;
  
  private c(Context paramContext)
  {
    c = new ADCardController(paramContext, f.a);
  }
  
  public static c a(Context paramContext)
  {
    if (a == null) {}
    try
    {
      if (a == null) {
        a = new c(paramContext);
      }
      return a;
    }
    finally {}
  }
  
  public ADCardController a()
  {
    return c;
  }
  
  public void b()
  {
    g.b("LockScreen", "mgr screen present received ! isPresent true");
    b = true;
    if (d != null)
    {
      g.b("LockScreen", "mgr call OnPresentState!");
      d.a();
    }
  }
  
  public boolean c()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.ad.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */