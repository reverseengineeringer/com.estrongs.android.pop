package com.flurry.sdk;

import android.graphics.Bitmap;
import android.text.TextUtils;
import java.util.List;

class ej$1$1
  extends ly
{
  ej$1$1(ej.1 param1, kn paramkn, Bitmap paramBitmap) {}
  
  public void a()
  {
    int i = a.h();
    if ((i >= 200) && (i < 300))
    {
      c.a.a(b);
      return;
    }
    if ((i >= 300) && (i < 400))
    {
      Object localObject = a.b("Location");
      if ((localObject != null) && (((List)localObject).size() > 0))
      {
        localObject = (String)((List)localObject).get(0);
        if (!TextUtils.isEmpty((CharSequence)localObject))
        {
          c.c.a((String)localObject, c.b + 1, c.a);
          return;
        }
        c.a.a();
        return;
      }
      c.a.a();
      return;
    }
    c.a.a();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ej.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */