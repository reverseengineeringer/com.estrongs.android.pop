package com.flurry.sdk;

import android.text.TextUtils;
import android.widget.RelativeLayout;

class ew$2$1
  implements ex.b
{
  ew$2$1(ew.2 param2) {}
  
  public void a(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      ew.c(a.d).a(new RelativeLayout(a.a));
      ew.b(a.d, a.c, paramString);
      return;
    }
    ec.a(ed.i, ew.a(a.d), "Login failed");
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ew.2.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */