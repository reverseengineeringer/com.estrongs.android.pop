package com.flurry.sdk;

import android.content.Context;
import android.text.TextUtils;

class g$1
  extends ly
{
  g$1(g paramg, String paramString, Context paramContext, boolean paramBoolean1, s params, boolean paramBoolean2, boolean paramBoolean3) {}
  
  public void a()
  {
    if (!TextUtils.isEmpty(a))
    {
      String str = ma.a(a);
      boolean bool2;
      if (!TextUtils.isEmpty(str))
      {
        bool2 = false;
        if (ma.d(str)) {
          bool2 = fi.a(b, str);
        }
        boolean bool1 = bool2;
        if (!bool2)
        {
          bool1 = bool2;
          if (ma.f(str)) {
            bool1 = fi.b(b, str);
          }
        }
        bool2 = bool1;
        if (!bool1)
        {
          bool2 = bool1;
          if (ma.e(str)) {
            bool2 = fi.c(b, str);
          }
        }
        if ((bool2) && (c)) {
          g.a(g, b, d);
        }
      }
      else
      {
        return;
      }
      au localau = d.l();
      if ((!bool2) && (localau.r()))
      {
        g.a(g, d, str, c, e);
        return;
      }
      if ((!bool2) && (f))
      {
        fi.a(b, d, str, c, e);
        return;
      }
      fi.a(b, str, e);
      return;
    }
    kg.a(6, g.c(), "Failed to launch: " + a);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.g.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */