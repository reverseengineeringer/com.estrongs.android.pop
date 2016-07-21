package com.estrongs.fs;

import com.estrongs.android.scanner.f;
import com.estrongs.android.util.ap;

public class s
  extends k
{
  private static final String[] a = { "/pictures/screenshots/" };
  
  public Boolean a(f paramf)
  {
    paramf.b("Screenshots");
    return Boolean.valueOf(true);
  }
  
  public boolean a(h paramh)
  {
    boolean bool2 = false;
    paramh = ap.bV(paramh.getPath()).toLowerCase();
    String[] arrayOfString = a;
    int j = arrayOfString.length;
    int i = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < j)
      {
        if (paramh.contains(arrayOfString[i])) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */