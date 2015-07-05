package com.estrongs.android.pop.app.b;

import com.estrongs.fs.h;
import com.estrongs.fs.i;
import com.estrongs.fs.m;

public class t
  implements i
{
  private String[] a = null;
  
  t(String paramString)
  {
    if (paramString != null) {
      a = paramString.split(";");
    }
  }
  
  public boolean a(h paramh)
  {
    if (a == null) {}
    for (;;)
    {
      return false;
      if ((paramh != null) && (!paramh.getFileType().a()))
      {
        paramh = paramh.getName().toLowerCase();
        String[] arrayOfString = a;
        int j = arrayOfString.length;
        int i = 0;
        while (i < j)
        {
          String str = arrayOfString[i];
          if ((str != null) && (paramh.endsWith(str.toLowerCase()))) {
            return true;
          }
          i += 1;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.b.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */