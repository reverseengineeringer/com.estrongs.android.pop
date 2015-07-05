package com.estrongs.android.view;

import com.estrongs.android.pop.utils.aa;
import com.estrongs.android.pop.utils.ae;
import com.estrongs.fs.h;
import com.estrongs.fs.i;

public class aj
  implements i
{
  private ae a;
  private String b;
  private int d;
  
  public aj(String paramString, int paramInt)
  {
    b = paramString;
    d = paramInt;
    a = aa.d(paramString, paramInt);
  }
  
  public boolean a()
  {
    ae localae = aa.d(b, d);
    return (localae == null) || ((!e) && (!b));
  }
  
  public boolean a(h paramh)
  {
    if (a == null) {}
    while (!aa.a(a, paramh, d)) {
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */