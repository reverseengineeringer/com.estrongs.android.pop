package com.estrongs.android.pop.app.e;

import com.estrongs.android.util.ap;
import com.estrongs.fs.util.j;
import java.util.Iterator;
import java.util.List;

public class g
{
  private static g a = null;
  private long b;
  private long c;
  private int d;
  
  private g()
  {
    Object localObject = ap.a();
    b = 0L;
    c = 0L;
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      long[] arrayOfLong = j.k((String)((Iterator)localObject).next());
      b += arrayOfLong[0] * arrayOfLong[2];
      c += (arrayOfLong[0] - arrayOfLong[1]) * arrayOfLong[2];
    }
    if (b == 0L)
    {
      d = 0;
      return;
    }
    d = ((int)(c * 100L / b));
  }
  
  public static g a()
  {
    try
    {
      if (a == null) {
        a = new g();
      }
      g localg = a;
      return localg;
    }
    finally {}
  }
  
  public int b()
  {
    return d;
  }
  
  public long c()
  {
    return b;
  }
  
  public long d()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.e.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */