package com.estrongs.fs;

import com.estrongs.android.scanner.f;
import com.estrongs.fs.util.j;

public class r
  extends k
{
  private static final String[] a = { "amr", "wav" };
  
  public Boolean a(f paramf)
  {
    paramf.a(".amr");
    paramf.a(".wav");
    return Boolean.valueOf(true);
  }
  
  public boolean a(h paramh)
  {
    boolean bool2 = false;
    paramh = j.b(paramh.getAbsolutePath().toLowerCase());
    String[] arrayOfString = a;
    int j = arrayOfString.length;
    int i = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < j)
      {
        if (arrayOfString[i].equals(paramh)) {
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
 * Qualified Name:     com.estrongs.fs.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */