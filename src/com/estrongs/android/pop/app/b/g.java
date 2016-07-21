package com.estrongs.android.pop.app.b;

import com.estrongs.android.util.ap;
import com.estrongs.android.util.l;
import com.estrongs.fs.util.j;

class g
{
  String[] a;
  
  g() {}
  
  g(String[] paramArrayOfString)
  {
    a = paramArrayOfString;
  }
  
  boolean a(String paramString)
  {
    if (!b(paramString)) {}
    for (;;)
    {
      return false;
      if (a == null) {
        return true;
      }
      paramString = j.b(paramString);
      if (paramString != null)
      {
        String[] arrayOfString = a;
        int j = arrayOfString.length;
        int i = 0;
        while (i < j)
        {
          if (paramString.equals(arrayOfString[i])) {
            return true;
          }
          i += 1;
        }
      }
    }
  }
  
  boolean b(String paramString)
  {
    if (d.a(paramString)) {
      l.e("eee", paramString);
    }
    while (ap.cp(paramString)) {
      return false;
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.b.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */