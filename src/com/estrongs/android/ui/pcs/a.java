package com.estrongs.android.ui.pcs;

import com.estrongs.android.util.an;

public class a
{
  static b a;
  static Object b = new Object();
  
  public static b a(String paramString)
  {
    for (;;)
    {
      try
      {
        synchronized (b)
        {
          if ((a != null) && (ac > 0L))
          {
            paramString = a;
            return paramString;
          }
          a = new b();
          aa = paramString;
          if (!u.a().b()) {
            continue;
          }
          boolean bool = an.b();
          if (!bool) {
            continue;
          }
        }
      }
      catch (Exception paramString)
      {
        continue;
      }
      try
      {
        paramString = com.estrongs.fs.impl.o.b.k(aa);
        ab = paramString[1];
        ac = paramString[0];
        paramString = a;
        return paramString;
        paramString = finally;
        throw paramString;
      }
      catch (Exception paramString)
      {
        paramString.printStackTrace();
        ab = 0L;
        ac = 0L;
        continue;
      }
      ab = 0L;
      ac = 0L;
    }
  }
  
  public static boolean a()
  {
    return (a != null) && (ac > 0L);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.pcs.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */