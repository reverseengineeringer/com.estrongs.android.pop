package com.estrongs.android.pop.app.b;

import com.estrongs.fs.h;
import com.estrongs.fs.i;

public class u
  implements i
{
  private String a;
  private boolean b = true;
  
  public u(String paramString)
  {
    a = paramString.trim();
  }
  
  public boolean a(h paramh)
  {
    if (b) {
      return paramh.getName().toLowerCase().contains(a.toLowerCase());
    }
    return paramh.getName().contains(a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.b.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */