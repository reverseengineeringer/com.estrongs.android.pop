package com.estrongs.android.pop.app.b;

import com.estrongs.fs.h;
import com.estrongs.fs.i;
import com.estrongs.fs.m;

public class s
  implements i
{
  private long a;
  private long b;
  
  public s(long paramLong1, long paramLong2)
  {
    a = paramLong1;
    b = paramLong2;
  }
  
  public boolean a(h paramh)
  {
    boolean bool2 = true;
    boolean bool1;
    if ((paramh == null) || (paramh.getFileType().a()))
    {
      bool1 = false;
      return bool1;
    }
    long l = paramh.lastModified();
    if (a > -1L) {
      if (l >= a) {
        bool1 = true;
      }
    }
    for (;;)
    {
      if (b > -1L)
      {
        if (bool1)
        {
          bool1 = bool2;
          if (l <= b) {
            break;
          }
        }
        return false;
        bool1 = false;
        continue;
      }
      return bool1;
      bool1 = true;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.b.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */