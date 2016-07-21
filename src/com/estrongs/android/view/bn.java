package com.estrongs.android.view;

import com.estrongs.android.pop.utils.ad;
import com.estrongs.android.pop.utils.ai;
import com.estrongs.fs.h;
import com.estrongs.fs.i;

public class bn
  implements i
{
  private ai a;
  private String b;
  private int d;
  
  public bn(String paramString, int paramInt)
  {
    b = paramString;
    d = paramInt;
    a = ad.d(paramString, paramInt);
  }
  
  public boolean a()
  {
    ai localai = ad.d(b, d);
    return (localai == null) || ((!e) && (!b));
  }
  
  public boolean a(h paramh)
  {
    if (a == null) {}
    while (!ad.a(a, paramh, d)) {
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.bn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */